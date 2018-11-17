# The list of candies to print to the screen
pieList = ["Pecan", "Apple", "Bean", "Back Bean", "Benofee",
           "Blueberry", "Buko Bar", "Burek", "Tamek", "Steak"]

# The list used to store all of the candies selected inside of
pieCart = []

for pie in pieList:
    print("[" + str(pieList.index(pie)) + "]" + pie)

shopping="YES"
while shopping=="YES":
    selected = input("enter the Pie you want to bring home ")
    pieCart.append(pieList[int(selected)])
    shopping = input("Do you want to continue ")


for pie in pieCart:
    print("[" + str(pieCart.index(pie)) + "]" + pie)

shopping="YES"
while shopping=="YES":
    selected = input("enter the Pie you want to remove ")
    pieList.remove(pieList[int(selected)])
    shopping = input("Do you want to continue ")

for pie in pieList:
    print("[" + str(pieList.index(pie)) + "]" + pie)
