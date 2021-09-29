#Llamar desde el shell 
#con la sintáxis python bnf_kotlin.py "statement escrito en kotlin"
import sys


def parenthesis_finder(rest_of_string):
    idx=0
    while idx <len(rest_of_string):
        if(rest_of_string[idx] == ')'):
            return idx
        if (rest_of_string[idx] == '('):
            new_idx = parenthesis_finder(rest_of_string[idx+1:])
            if(new_idx):
                idx = new_idx+1+idx
            else:
                return False
        idx+=1
    return False


def brackect_finder(rest_of_string):
    idx=0
    while idx <len(rest_of_string):
        if(rest_of_string[idx] == '}'):
            return idx
        if (rest_of_string[idx] == '{'):
            new_idx = parenthesis_finder(rest_of_string[idx+1:])
            if(new_idx):
                idx = new_idx+1+idx
            else:
                return False
        idx+=1
    return False


def struct_analizer(string):
    origin_string=string
    if(string[0] == '('):
        new_idx = parenthesis_finder(string[1:])
        if(new_idx):
            string=string[new_idx+2:]
            if(string[0] == '{'):
                new_idx = brackect_finder(string[1:])
                if(new_idx):
                    print('Y está bien formateado ^^')
                else:
                    print('Pero está mal formateado')
                    print('\033[92m'+origin_string)
                    print(" " *(len(origin_string))+'^ se esperaba un {')
            else:
                print('Pero está mal formatedo')
                print('\033[92m'+origin_string)
                print(" " *(len(origin_string)-len(string))+'^ se esperaba un {')
        else:
            print('Pero está mal formatedo')
            print('\033[92m'+origin_string)
            print('se esperaba un )')
    else:
        print('Pero está mal formateado')
        print('\033[92m'+origin_string)
        print(" "*(len(origin_string)-len(string))+'^ se esperaba un (')
if (len(sys.argv) != 2):
    print('Sólo un valor dentro de comillas como argumento por favor :)')
else:
    gram = sys.argv[1].replace(' ','')
    if(gram[0:2] == 'if'):
        rest_of_string = gram[2:]
        print('\033[93m'+gram, '\033[91m'+'es un', '\033[94m'+"<if-statement>")
        struct_analizer(rest_of_string)
    elif(gram[0:3] == 'for'):
        rest_of_string = gram[3:]
        print('\033[93m'+gram, '\033[91m'+'es un', '\033[94m'+"<for-loop>")
        struct_analizer(rest_of_string)
    elif(gram[0:5] == 'while'):
        rest_of_string=gram[5:]
        print('\033[93m'+gram, '\033[91m'+'es un', '\033[94m'+"<while-loop>")
        struct_analizer(rest_of_string)
    else:
        print("No es una gramática válida")
