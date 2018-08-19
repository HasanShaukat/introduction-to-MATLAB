nums = list()
inp = None
while inp != 'done':
    inp = input('Enter a number: ')
    try:
        num = float(inp)
    except:
        print('Please enter a number')
    nums.append(num)
print('Maximum: ',max(nums))
print('Minimum: ',min(nums))
