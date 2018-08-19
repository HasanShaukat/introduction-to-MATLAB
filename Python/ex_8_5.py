fileName = input('Enter a filename: ')
try: fileHandle = open(fileName)
except:
    print('Please enter a valid filename')
    quit()
count = 0
for line in fileHandle:
    if 'From' in line:
        words = line.split()
        email = words[1]
        print(email)
        count = count + 1
print('There were', count, 'lines in the file with From as the first word')
