"""
This is a dumb calculator that can add and subtract whole numbers from zero to five.
When you run the code, you are prompted to enter two numbers (in the form of English
word instead of number) and the operator sign (also in the form of English word).
The code will perform the calculation and give the result if your input is what it
expects.

The code is very long and messy. Refactor it according to what you have learned about
code simplicity and efficiency.
"""
MY_DICT = {"zero": 0, "one": 1, "two": 2, "three": 3, "four": 4, "five": 5,
           0: "zero", 1: "one", 2: "two", 3: "three", 4: "four", 5: "five", 6: "six", 7: "seven", 8: "eight", 9: "nine",
           10: "ten"}
print('Welcome to this calculator!')
print('It can add and subtract whole numbers from zero to five')
a = input('Please choose your first number (zero to five): ')
b = input('What do you want to do? plus or minus: ')
c = input('Please choose your second number (zero to five): ')

if b == "plus":
    print(f'{a} {b} {c} equals {MY_DICT[MY_DICT[a] + MY_DICT[c]]}')
if b == "minus":
    diff = MY_DICT[a] - MY_DICT[c]
    if diff >= 0:
        print(f'{a} {b} {c} equals {MY_DICT[MY_DICT[a] + MY_DICT[c]]}')
    else:
        print(f'{a} {b} {c} equals negative {MY_DICT[(MY_DICT[a] - MY_DICT[c]) * -1]}')

if (not a == 'zero' and not a == 'one' and not a == 'two' and not a == 'three' and not a == 'four' and not a == 'five') or (not c == 'zero' and not c == 'one' and not c == 'two' and not c == 'three' and not c == 'four' and not c == 'five') or (not b == 'plus' and not b == 'minus'):
    print("I am not able to answer this question. Check your input.")

print("Thanks for using this calculator, goodbye :)")
