def chop(theList):
    del theList[0]
    del theList[len(theList)-1]
x = [1,2,3,4,5,6,7]
print(x)
chop(x)
print(x)
