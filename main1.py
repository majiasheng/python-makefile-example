with open('target1','w+') as f, open('aux.txt', 'r+') as a:
    f.write(a.read())
