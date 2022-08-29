from os import listdir
import os
import pyperclip
from os.path import isfile, join
import pathlib
import re

mypath = pathlib.Path(__file__).parent.absolute()
onlyfiles = [f for f in listdir(mypath) if (isfile(join(mypath, f)) and '.txt' in f)]
print(onlyfiles)
out=""

for i in onlyfiles:
    my_file = open(i, 'r')
    content = my_file.read()
    my_file.close()
##    my_file2 = open(i, 'w')
    onlyObjects=content.split('\n')
    layer = 0
    props = []
    for i in onlyObjects:
        if '{' in i:
            layer += 1
            if layer == 1:
                out += '\n' + i.replace('\t', '').strip()
##                print(i.replace('\t', '').strip())
            else:
                out += '\n' + '\t' + i.replace('\t', '').strip()
##                print('\t' + i.replace('\t', '').strip())
        elif '}' in i:
            layer -= 1
            props = sorted(props,key=lambda l:l[0])
            for ii in props:
                if len(ii) == 2:
                    out += '\n' + '\t\t%-*s= %s' % (60,ii[0],ii[1])
##                    print('\t\t%-*s= %s' % (60,ii[0],ii[1]))
                else:
                    out += '\n' + '\t\t%s' % ii[0]
##                    print('\t\t%s' % ii[0])
            props = []
            if layer == 2:
                out += '\n' + i.replace('\t', '').strip()
##                print(i.replace('\t', '').strip())
            else:
                out += '\n' + '\t' + i.replace('\t', '').strip()
##                print('\t' + i.replace('\t', '').strip())
        elif layer == 0:
                out += '\n' + i.replace('\t', '').strip()
##                print(i.replace('\t', '').strip())
        elif layer == 1:
                out += '\n' + '\t' + i.replace('\t', '').strip()
##                print('\t' + i.replace('\t', '').strip())
        elif layer == 2:
            props.append(i.replace('\t', '').replace(' ', '').split('='))
##    my_file2.close()
pyperclip.copy(out)
