    # The list of candies to print to the screen
candyList = ["Snickers", "Kit Kat", "Sour Patch Kids", "Juicy Fruit", "Swedish Fish",
                "Skittles", "Hershey Bar", "Skittles", "Starbursts", "M&Ms"]

    # The amount of candy the user will be allowed to choose
allowance = 5

    # The list used to store all of the candies selected inside of
candyCart = []

for candy in candyList:
    print("[" + str(candyList.index(candy)) + "]" + candy)

for x in range(allowance):
        selected=input("enter the candy you want to bring home ")
        candyCart.append(candyList[int(selected)])

for candy in candyCart:
            print("[" + str(candyCart.index(candy)) + "]" + candy)
feed="YES"
while feed=="YES":
    selected = input("enter the candy you want to bring home ")
    candyCart.append(candyList[int(selected)])
    feed = input("Do you want to continue ")

for candy in candyCart:
    print("[" + str(candyCart.index(candy)) + "]" + candy)