str = 'X-DSPAM-Confidence: 0.8475'
pos = str.find(':')
#print(pos)
ourVal = float(str[pos+2:])
print(ourVal)
