fileName = input('Enter a filename: ')
try:
    fileHandle = open(fileName)
except:
    # Here's the Easter Egg
    if 'na na boo boo' in fileName:
        print("NA NA BOO BOO TO YOU! You have been punk'd!")
    else:
        print('Please enter a valid filename')
    quit()
lineCount = 0
for line in fileHandle:
    lineCount = lineCount + 1
print('The subject has',lineCount,'lines')
