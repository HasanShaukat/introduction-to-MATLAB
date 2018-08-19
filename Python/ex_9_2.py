dayCount = dict()
fname = input('Enter file name: ')
fhandle = open(fname)
for line in fhandle:
    words = line.split()
    if 'From' in line and len(words)>2:
        #print('Debug:',words)   #Debugging Statement
        dayCount[words[2]] = dayCount.get(words[2],0) + 1
print(dayCount)
