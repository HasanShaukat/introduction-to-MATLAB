fileHandle = open('romeo.txt')
ourWords = list()
for line in fileHandle:
    words = line.split()
    for word in words:
        if word not in ourWords:
            ourWords.append(word)
ourWords.sort()
print(ourWords)
