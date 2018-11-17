#* Create a simple Python command line application. Upon running, the application should:

 # * Print "Hello User!"
print("Hello User:")
user_name=input("What is your name :")
print("Hello User:" + user_name)
user_age=input("What is your age :")

if int(user_age) < 8 :
    print("you are a baby")
elif int(user_age) > 8:
    print("you are an adult")
