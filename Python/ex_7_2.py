fileName = input('Enter a filename: ')
try:
    fileHandle = open(fileName)
except:
    print('Please enter a valid filename')
    quit()
target = 'X-DSPAM-Confidence:'
lineCount = 0
totSpamConf = 0.0
for line in fileHandle:
    if line.startswith(target):
        #print(line.strip())
        pos = line.find(':')
        spamConf = float(line[pos+2:])
        totSpamConf = totSpamConf + spamConf
        lineCount = lineCount + 1
print('Line Count:',lineCount)
print('Average Spam Confidence:',totSpamConf/lineCount)
