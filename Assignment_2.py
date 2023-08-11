## 8. Code
Spam = int(input("Enter the num: "))   # assignment operator
    if Spam == 1:
       print("HELLO")
    elif Spam == 2:
        print("Howdy !")
    else: 
        print(" Greeeting ! ")


## 12. Code
# Write a short program that prints the numbers 1 to 10 using a for loop. Then  equivalent program using a while loop.
for i in range(10): #10 is exclusive or can take range(1,11) for inclusive of 10
    print(i)

for i in range(1,11):
    print(i)

i=0 
while i<=10:
    print(i)
    i+=1
