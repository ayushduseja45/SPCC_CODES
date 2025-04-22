import re

token_specification = [
    ('NUMBER', r'\d+(\.\d*)?'),
    ('STRING', r'"[^"]*"'),
    ('OP', r'==|!=|<=|>=|[+\-*/<>=%]'),
    ('SYMBOL', r'[;{}(),]'),
    ('ID', r'[A-Za-z_]\w*'),
    ('SKIP', r'[ \t\n]+'),
    ('MISMATCH', r'.'),
]

keywords = {'if', 'else', 'int', 'float', 'while', 'return'}

token_regex = '|'.join(f'(?P<{name}>{pattern})' for name, pattern in token_specification)

def lexer(code):
    for match in re.finditer(token_regex, code):
        kind = match.lastgroup
        value = match.group()

        if kind == 'ID' and value in keywords:
            kind = 'KEYWORD'
        elif kind == 'SKIP':
            continue
        elif kind == 'MISMATCH':
            print(f'Unexpected character: {value}')
            continue

        print(f'{kind:<10} => {value}')

# Example usage
code = '''
int a = 0;
int b = 4;
printf("%d + %d => %d", a, b, a + b);
'''
lexer(code)
