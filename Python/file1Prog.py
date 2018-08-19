# Program to read a file and print all in uppercase

fileName = input('Enter a filename: ')
try:
    fileHandle = open(fileName)
except:
    print('Invalid filename or File not present')
    quit()
data = fileHandle.read()
upData = data.upper()
print(upData)
