import re

keywords ={'int','float,''char','if','else','while','for','return','void','break','continue','switch','case','default','goto','sizeof','typedef','struct','union','enum','const','volatile','static','extern','register','auto'}
operators ={'+','-','*','/','%','=','+=','-=','*=','/=','%=','++','--','==','!=','>','<','>=','<=','&&','||','!','&','|','^','~'}   
delimiters={')',';','{','}','[',']','(',')','<','>','"',"'",'.',',','?','::'}

def tokenize(code):
    tokens = re.findall(r'[a-zA-Z_]\w*|\d+|==|<=\>=|[^\s]',code)
    for token in tokens:
        if token in keywords:
            print(f"keyword: {token}")
        elif token in operators:
            print(f"operator: {token}")
        elif token in delimiters:
            print(f"delimiter: {token}")
        elif re.match(r'[a-zA-Z_]\w*$',token):
            print(f"identifier: {token}")
        elif re.match(r'^\d+$',token):
            print(f"integer: {token}")
        else:
            print(f"unknown: {token}")

    return tokens

code='''
int a = 67;
int b = 89;
printf("Hello World");
int c = a + b;
'''

tokenize(code)