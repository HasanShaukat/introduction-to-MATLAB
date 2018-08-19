fname = input('Enter File Name: ')
fhandle = open(fname)
emails = dict()
for line in fhandle:
    words = line.split()
    if 'From' in line:
        #print('Debug:',line)   #Debugging Statement
        emails[words[1]] = emails.get(words[1],0) + 1  #Updating dictionary
print(emails)
print('There were', len(emails), 'contacts and', sum(emails.values()), 'emails in total')
