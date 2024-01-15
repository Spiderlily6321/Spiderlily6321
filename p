 
PRACTICAL 1

AIM: Write a python program for Accepting input from user and print it.

CODE:
x=input("Type anything:")
print(x)

 
PRACTICAL 2

AIM: Write a python program for printing addition, subtraction, multiplication and division of two numbers using user input.


CODE:

x=int(input("Enter first No:"))
y=int(input("Enter Second No:"))
add=x+y
print("the sum is ",add)
sub=x-y
print("The diff is ",sub)
mul=x*y
print("The mul is ",mul)
div=x/y
print("The div is ",div)


 
PRACTICAL 3

AIM: Write a python program for finding data type of value assigned to a variable.

CODE:

a=True
print(type(a))


PRACTICAL 4

AIM: Write a Python program to find if the number entered by user is even or odd.

CODE:

x=int(input("Enter number:"))
if x%2==0:
    print ("It is an even number")
else :
     print ("It is an odd number")
    

PRACTICAL 5

AIM: Write a python program to find the number entered by user is positive or not.

CODE:

x=int(input("Enter number:"))
if x>0:
    print ("It is a positive number")
else :
     print ("It is not a positive number")


PRACTICAL 6

AIM: Write a python program to find the largest among three numbers.

CODE:

a=int(input("Enter first number:"))
b=int(input("Enter second number:"))
c=int(input("Enter third number:"))

if a>b & a>c :
    print("a is the largest number")
elif b>a & b>c :
    print("b is the largest number")
else :
    print("c is the largest number")


 
PRACTICAL 7

AIM: Write a python program to find if the person is eligible for voting or not.

CODE:
age=int(input("Enter age:"))

if age>=18:
    print("You are eligible for voting")
else :
    print("You are not eligible for voting")


PRACTICAL 8

AIM: Write a python program to find if the number is divisible by 12 or not.

CODE:

x=int(input("Enter number"))
if x%12==0 :
    print("It is divisible by 12")
else :
    print("It is not divisible by 12")


PRACTICAL 9

AIM: Write a python program to calculate the electricity bill 

CODE:
unit=int(input("Enter the electricity unit:")) rs=0

if(unit<=100):
print("No Charges!!") elif(unit>100 and unit<200):
rs=(unit-100)*5
print("Your total charges=",rs) else:
rs=500+(unit-200)*10 print("Your total charges=",rs)


 
PRACTICAL 10

AIM: Write a python program to print the last two digit of a number.

CODE:

num=int(input("Enter a number:"))
last_two=num % 100
print(last_two)


 
 
PRACTICAL 11

AIM: Write a python program to display the grade based on student's percentage.

CODE:
num1=int(input("Enter marks 1 (out of 100):"))
num2=int(input("Enter marks 2 (out of 100):"))
num3=int(input("Enter marks 3 (out of 100):"))


avg=(num1+num2+num3)/3


if avg>80:
print("Your Grade is O") elif avg>70:
print("Your Grade is A") elif avg>60:
print("Your Grade is B") elif avg>50:
print("Your Grade is C") elif avg>40:
print("Your Grade is D") else:
print("Your Grade is F")


PRACTICAL 12

AIM: Write a python program to find Multiplication table of a given number.

CODE:

num = int(input(" Enter a number : "))    

print("Table of: ")  
for a in range(1,11):    
   print(num,'x',a,'=',num*a)  


PRACTICAL 13
AIM: Sum of all odd and even number in a given range

CODE:
maximum = int(input(" Please Enter the Maximum Value : "))
even_total = 0
odd_total = 0
 
for number in range(1, maximum + 1):
    if(number % 2 == 0):
        even_total = even_total + number
    else:
        odd_total = odd_total + number
 
print("The Sum of Even Numbers from 1 to {0} = {1}".format(number, even_total))
print("The Sum of Odd Numbers from 1 to {0} = {1}".format(number, odd_total))



 
 
PRACTICAL 14
AIM: To accept a word from user and reverse it

CODE:
word = input("Input a word to reverse: ")

for char in range(len(word) - 1, -1, -1):
  print(word[char], end="")
print("\n")

OUTPUT:

 
 
PRACTICAL 15

AIM: To find if a number is Armstrong number or not.

CODE:
num = int(input("Enter a number: "))

sum = 0
n1 = len(str(num))
temp = num
while temp > 0:
   digit = temp % 10
   sum += digit ** n1
   temp //= 10

if num == sum:
   print(num,"is an Armstrong number")
else:
   print(num,"is not an Armstrong number")








OUTPUT:

 
 
PRACTICAL 16

AIM: To print all the number in a given range

CODE:

start = int(input("Enter the start of range: ")) 
end = int(input("Enter the end of range: ")) 

for num in range(start, end + 1): 
 
	if num >= 0: 
		print(num, end=" ")


OUTPUT:

 
 
PRACTICAL 17

AIM: Write a python program to unpack tuple in variables

CODE:
subjects=("Python","Android","Java")
subject1,subject2,subject3=subjects
print(subject2)
print(subject1)
print(subject3)
OUTPUT:
 


 

PRACTICAL 18

AIM: Write a python program to create a new tuple by merging of tuple with the + operator.

CODE:
tuple1 = ("A", "B" , "C")
tuple2 = ([1,2,3],36,90)
tuple3 = tuple1 + tuple2
print("First Tuple:",tuple1)
print("Second Tuple:",tuple2)
print("Merged tuple:",tuple3)

OUTPUT:
 
PRACTICAL 19

AIM: Write a python program to convert tuple into string.

CODE:

tuple1=('A','p','u','r','v','a')
string="".join(tuple1)
print("String=",string)

OUTPUT:
 
 
PRACTICAL 20

AIM: Write a python program to check whether element exist or not in tuple.

CODE:

tuplex = (1,2,3,4,5)
print("23 in tuplex:",23 in tuplex)
print("5 in tuplex:",5 in tuplex)
OUTPUT:
 
 
PRACTICAL 21
AIM: Write a python program to reverse a tuple.

CODE:

x = (5, 10, 15, 20)
y = tuple(reversed(x))
print(y)

OUTPUT:
 

 
PRACTICAL 22
AIM: Write a python program to multiply all elements of tuple.
CODE:
def mul_tup(tup) :
    product = 1
    for i in tup:
        product = product * i
return product
tuple1 = (2, 1, 4, 3)
print("Elements=",tuple1)
print("Product=",mul_tup(tuple1))
OUTPUT:
 


PRACTICAL 23
AIM: Write a python program to add ed at the end of given verb string.
CODE:

n=int(input("Enter no of verb strings:"))
my_list=[]
for i in range(n):
    my_list.append(input('Enter a verb:'))
print("Original String:",my_list)
lst=[]

for i in my_list:
    i=i+"ed"
    lst.append(i)

past_words=lst
print("String after adding ed:",past_words)

OUTPUT:
 
 
PRACTICAL 24
AIM: Write a program to check if the string is pangram
CODE:
str=input("Enter any string:")
flag=0
alphabet='abcdefghijklmnopqrstuvwxyz'
for char in alphabet:
    if char not in str:
        flag=1
if flag==1:
    print("It is not a pangram")
else:
    print("It is a pangram")
 

OUTPUT:
 

 
PRACTICAL 25
AIM: Write a python program that takes two lists as inputs and prints common output in third list.
CODE:
lst1=[]
lst2=[]
lst3=[]
n1=int(input("Enter no of elements in first list:"))
for i in range(0,n1):
       elem1=int(input())
       lst1.append(elem1)
n2=int(input("Enter no of elements in second list:"))


for j in range(0,n2):       
       elem2=int(input())
       lst2.append(elem2)
print("First List:",lst1)
print("Second List:",lst2)
a=set(lst1)
b=set(lst2)
lst3=list(a.intersection(b))
print("List with common elements:",lst3)


OUTPUT:
 
 
PRACTICAL 26
AIM: Write a python program to find the number is perfect number or not.
CODE:
num=int(input("Enter any number: "))  
s=0  
for i in range(1,num):  
    if (num%i==0):  
        s=s+i  
if(s==num):  
    print("The number is a perfect number")  
else:  
    print("The number is not a perfect number")

OUTPUT:
  
PRACTICAL 27
AIM: Write a python program to print Fibonacci series.

CODE:

nterms = int(input("No of terms:"))

n1, n2 = 0, 1
count = 0

if nterms <= 0:
   print("Please enter a positive integer")
elif nterms == 1:
   print("Fibonacci sequence upto",nterms,":")
   print(n1)
else:
   print("Fibonacci sequence:",end=" ")
   while count < nterms:
       print(n1,end=" ")
       nth = n1 + n2
       
n1 = n2
       n2 = nth
       count += 1




OUTPUT:

 

 

PRACTICAL 28
AIM: Kivy Installation on Windows

STEPS:

To install the kivy on Windows, first, we need to install Python and Anaconda on our system.


Following are the steps to install python

i) Go to https://www.python.org/ 

ii) Under Downloads tab, click on Windows

 



iii) Select Python releases version for Windows

 

iv) Double click on the downloaded file and click on Install Now. 

v) The below screenshot shows that Python installation is in progress.

vi) The below screenshot shows that the setup is installed successfully. You just simply click on the Close button.


Following are the steps to install anaconda

i) Go to  https://www.anaconda.com/products/individual

 



ii) Click on 64-bit Graphical Installer (446 MB) to download it.

 



Now we are able to install kivy.
Following are the steps to install kivy:

i) Go to the Anaconda Prompt.
ii) Before installing kivy, first update the pip by using the following command:
python -m pip install - -upgrade pip wheel setuptools  
iii) There are the following 3 dependencies that we need to install while installing the Kivy:
python-   m pip install docutils pygments pypiwin32 kivy.deps.sdl2 kivy.deps.glew  
python -m pip install kivy.deps.gstreamer  
python -m pip install kivy.deps.angle  
iv) Use the following command to install Kivy:
python -m pip install kivy  
 
 

PRACTICAL 29
AIM: Creating simple Hello World program.

CODE:
import kivy
from kivy.app import App
from kivy.uix.label import Label
    
class MyApp(App):        
    def build(self):    
        return Label(text ="Hello World !",font_size=72)

app=MyApp()
app.run()
 

OUTPUT:
 

 

PRACTICAL 30
AIM: Kivy program to display Image widget.

CODE:
import kivy
from kivy.app import App  
from kivy.uix.image import Image  
   
class ImageApp(App):
    
    def build(self):   
            
       return Image(source ="C:\\Apurva\Python Practicals\kivy.png")
    
ImageApp().run()
 

OUTPUT:
 


 

PRACTICAL 31
AIM: Kivy program to create Button.

CODE:
from kivy.app import App
from kivy.uix.button import Button

class ButtonClass(App):
    def build(self):
        btn1=Button(text="CLICK ME!",size_hint=(0.3,0.1),pos = (280,300))
        return btn1
        
button=ButtonClass()
button.run()






OUTPUT:
 


 

 

PRACTICAL 32
AIM: Kivy program to display Label and checkboxes.

CODE:
import kivy    
from kivy.app import App   
from kivy.uix.label import Label 
       
class LabelDemo(App):
    
    def build(self):   
        label1 = Label(text ="javatpoint", font_size = 120)
        return label1   
    
LabelDemo().run()
 

OUTPUT:
 

CODE:
import kivy
from kivy.app import App
from kivy.uix.widget import Widget
from kivy.uix.label import Label
from kivy.uix.checkbox import CheckBox
from kivy.uix.gridlayout import GridLayout

class check_box(GridLayout):

	def __init__(self, **kwargs): 
		super(check_box, self).__init__(**kwargs)

		self.cols = 2
		self.add_widget(Label(text ='Python')) 
		self.active = CheckBox(active = True)
		self.add_widget(self.active)

		self.add_widget(Label(text ='C')) 
		self.active = CheckBox(active = False)
		self.add_widget(self.active)

		self.add_widget(Label(text ='C++')) 
		self.active = CheckBox(active = True)
		self.add_widget(self.active)

		self.add_widget(Label(text ='Java')) 
		self.active = CheckBox(active = False)
		self.add_widget(self.active)

		self.add_widget(Label(text ='Other')) 
		self.active = CheckBox(active = True)
		self.add_widget(self.active)
	
class CheckBoxApp(App):
	def build(self):
		return check_box()

CheckBoxApp().run()

OUTPUT:
 
 
PRACTICAL 33
AIM: Installation of Django

Step 1 — Install Python and pip
To install Python we must first update the local APT repository. In your terminal window, we’ll input the command that follows. Note that the -y flag answers “yes” to prompts during the upgrade process. Remove the flag if you’d like the upgrade to stop for each prompt.
sudo apt-get update && sudo apt-get -y upgrade

When prompted to configure grub-pc, you can press ENTER to accept the default, or configure as desired.
It is recommended by the Django Software Foundation to use Python 3, so once everything is updated, we can install Python 3 by using the following command:
sudo apt-get install python3

To verify the successful installation of Python 3, run a version check with the python3 command:
python3 -V

The resulting output will look similar to this:
Output
python 3.5.2
Now that we have Python 3 installed, we will also need pip in order to install packages from PyPi, Python’s package repository.
sudo apt-get install -y python3-pip

To verify that pip was successfully installed, run the following command:
pip3 -V

You should see output similar to this:
Output
pip 8.1.1 from /usr/lib/python3/dist-packages (python 3.5)
Now that we have pip installed, we have the ability to quickly install other necessary packages for a Python environment.
Step 2 — Install virtualenv
virtualenv is a virtual environment where you can install software and Python packages in a contained development space, which isolates the installed software and packages from the rest of your machine’s global environment. This convenient isolation prevents conflicting packages or software from interacting with each other.
To install virtualenv, we will use the pip3 command, as shown below:
pip3 install virtualenv

Once it is installed, run a version check to verify that the installation has completed successfully:
virtualenv --version

We should see the following output, or something similar:
virtualenv 20.0.20 from /home/sammy/.local/lib/python3.5/site-packages/virtualenv/__init__.py
You have successfully installed virtualenv.
At this point, we can isolate our Django web application and its associated software dependencies from other Python packages or projects on our system.
Step 3 — Install Django
There are three ways to install Django. We will be using the pip method of installation for this tutorial, but let’s address all of the available options for your reference.
•	Option 1: Install Django within a virtualenv. This is ideal for when you need your version of Django to be isolated from the global environment of your server.
•	Option 2: Install Django from Source. If you want the latest software or want something newer than what your Ubuntu APT repository offers, you can install directly from source. Note that opting for this installation method requires constant attention and maintenance if you want your version of the software to be up to date.
•	Option 3: Install Django Globally with pip. The option we are going with is pip 3 as we will be installing Django globally.
We’ll be installing Django using pip within a virtual environment. For further guidance and information on the setup and utilization of programming environments, check out this tutorial on setting up a virtual environment.
While in the server’s home directory, we have to create the directory that will contain our Django application. Run the following command to create a directory called django-apps, or another name of your choice. Then navigate to the directory.
mkdir django-apps

cd django-apps 

While inside the django-apps directory, create your virtual environment. Let’s call it env.
virtualenv env

Now, activate the virtual environment with the following command:
. env/bin/activate

You’ll know it’s activated once the prefix is changed to (env), which will look similar to the following depending on what directory you are in:


Within the environment, install the Django package using pip. Installing Django allows us to create and run Django applications. To learn more about Django, read our tutorial series on Django Development.
pip install django

Once installed, verify your Django installation by running a version check:
django-admin --version

This, or something similar, will be the resulting output:
Output
2.2.12
 
PRACTICAL 34
AIM: Hello World program in Django

CODE:
views.py
from django.http import HttpResponse

def index(request):
    html="<html><body bgcolor='pink'><div style='font-size:45px;margin-top:200px;'><b><center>HELLO WORLD!!</center></b></div></body></html>"
    return HttpResponse(html)

urls.py
from django.contrib import admin
from django.urls import re_path
from mysite.views import index

urlpatterns = [
    re_path(r'^admin/', admin.site.urls),
    re_path(r'^index/', index),
]








OUTPUT:

 
 
PRACTICAL 35
AIM: Program to print date and time using Django
CODE:
views.py
from django.http import HttpResponse
import datetime

def curr_datetime(request):
    now=datetime.datetime.now()
    html="<html><body bgcolor='aqua'><div style='font-size:45px;margin-top:200px;text-align:center;'>It is now <br>%s</div></body></html>" % now
    return HttpResponse(html)

urls.py
from django.contrib import admin
from django.urls import re_path
from mysite.views import curr_datetime

urlpatterns = [
   re_path(r'^admin/', admin.site.urls),
   re_path(r'^time/',curr_datetime), 
]

 

OUTPUT:



 
 

PRACTICAL 36
AIM: Program to print time after 10 hours through dynamic URL’s using Django
CODE:

views.py
from django.http import HttpResponse ,Http404
import datetime
def hours_ahead(request, offset):
try:
offset=int(offset)
except ValueError:
raise Http404()
dt=datetime.datetime.now() + datetime.timedelta (hours=offset) html=<html><body> bgcolor=’aqua’< div style= ’font-size:45px;margin-top: 200px; text-align:center;’>In %s hour(s), it will be %s</div><lt;/body> </html>”% (offset, dt)
return HttpResponse(html)
urls.py
from django.contrib import admin 
from django.urls import re_path 
from mysite.views import hours_ahead
urlpatterns = [
re_path(r’^admin/’, admin.site.urls),
re_path(r’^time/plus/(\d+)/$’,hours_ahead)
,
]
OUTPUT:


  
PRACTICAL 37
AIM: Program to demonstrate Templates in Django

CODE:
views.py
from django.shortcuts import render

def hello_name(request):
    params={'fname':'Vaibhavi','lname':'Shivtarkar'}
    return render(request,'name.html',params)

urls.py
from django.contrib import admin
from django.urls import re_path
from mysite.views import hello_name

urlpatterns = [
   re_path(r'^admin/', admin.site.urls),
   re_path(r'^hello_name/', hello_name),
]

name.html
<html>
    <head>
        <title>Demo</title>
    </head>
    <body bgcolor='yellow'>
        <center>
        <h1 style='margin-top:200px;font-size:55px;'>Hello {{fname}} {{lname}}!</h1>
        </center>
    </body>
</html>


OUTPUT:
 
 
PRACTICAL 38
AIM: Creating Django admin interface

CODE:
urls.py
from django.contrib import admin
from django.urls import re_path

urlpatterns = [
   re_path(r'^admin/', admin.site.urls),
]


OUTPUT:








 

 
 

PRACTICAL 39
AIM: Creating Django Models
 
CODE:
models.py
from django.db import models  
  
class Student(models.Model):  
    first_name = models.CharField(max_length=20)  
    last_name  = models.CharField(max_length=30)  

OUTPUT:
 
 
PRACTICAL 40
AIM: CRUD operations on Models
 
OUTPUT:

Add Student
 

 
 

 
Update Student

 
 
 
Delete Student
 

 


 


 
PRACTICAL 41
AIM: Programs on Functions

I.	CODE:
def my_function(fname,lname): print(fname+" "+lname)
my_function("Apurva","Nair") my_function("Vaibhavi","Shivtarkar") my_function("Pranjal","Jadhav")

OUTPUT:




II.	CODE:
def my_function(*kids):

print("The youngest child is "+kids[1]) my_function("Simran","Apurva","Shriya")


OUTPUT:
 

 


III.	CODE:
def my_function(child3,child2,child1): print("The youngest child is "+child3)
my_function(child1="Pranjal",child2="Apurva",child3="Vaibhavi")


OUTPUT:



IV.	CODE:
def my_function(**child):
print("First name is "+child['fname']) my_function(fname="Pratiksha",lname="Nair") 

OUTPUT:


 

 


V.	CODE:
def my_function(country="Norway"): print("I am from "+country)
my_function("Sweden") my_function() my_function("India") Output:


VI.	CODE:
def my_function(food): for x in food:
print(x) fruits=['apple','banana','cherry'] my_function(fruits)
 



Output:



VII.	CODE:
def my_function(x): return 12*x
print(my_function(5))

Output:





PRACTICAL 42
AIM: AIM: Programs on recursion to find the factorial of a number
CODE:

def recur_factorial(n):
   if n == 1:
       return n
   else:
       return n*recur_factorial(n-1)

num = 7
if num < 0:
   print("Sorry, factorial does not exist for negative numbers")
elif num == 0:
   print("The factorial of 0 is 1")
else:
   print("The factorial of", num, "is", recur_factorial(num))

 
OUTPUT:

 
 

PRACTICAL 43
AIM: Python Programs on lambda function

CODE:

greet = lambda : print('Hello World')
greet()

OUTPUT:
 
 
PRACTICAL 44
AIM: Programs on _init_function

CODE:

class Person:
  def __init__(self, name, age):
    self.name = name
    self.age = age

p1 = Person("rose", 20)

print(p1.name)
print(p1.age)

OUTPUT:

 
 
PRACTICAL 45
AIM: Create a class which has init function and normal def function for displaying the details

CODE:
class Person:

	def __init__(self, name):
		self.name = name

	def say_hi(self):
		print('Hello, my name is', self.name)


p = Person('Nikhil')
p.say_hi()

OUTPUT:
 


PRACTICAL 46

AIM: Program to print star pattern
CODE:

def pypart(n):
	
	for i in range(0, n):
	
		for j in range(0, i+1):
		
			print("* ",end="")
	

		print("\r")

n = 5
pypart(n)

OUTPUT:
 
PRACTICAL 47

AIM: Program on matplotlib
CODE:
I.	GRAPH

import sys
import matplotlib
matplotlib.use('Agg')

import matplotlib.pyplot as plt
import numpy as np

xpoints = np.array([0, 6])
ypoints = np.array([0, 250])

plt.plot(xpoints, ypoints)
plt.show()

plt.savefig(sys.stdout.buffer)
sys.stdout.flush()

 
OUTPUT:

 

II.	BAR

import sys
import matplotlib
matplotlib.use('Agg')

import matplotlib.pyplot as plt
import numpy as np

x = np.array(["A", "B", "C", "D"])
y = np.array([3, 8, 1, 10])

plt.bar(x,y)
plt.show()

plt.savefig(sys.stdout.buffer)
sys.stdout.flush()

OUTPUT:

 


 
PRACTICAL 48
AIM: Program on pandas

CODE:

import pandas as pd

df = pd.read_csv('data.csv')

print(df.to_string())


OUTPUT:

  
PRACTICAL 49
AIM: Program on Web scrapping using beautifulsoup
CODE:
from bs4 import BeautifulSoup 
import requests url = "https://www.tutorialspoint.com/index.htm" 
req = requests.get(url) 
soup = BeautifulSoup(req.text, "html.parser") 
print(soup.title) URL = https://realpython.github.io/fake-jobs/
page = requests.get(URL) 
res = BeautifulSoup(page.text, "html.parser") 
print(res)

OUTPUT:

 

  
PRACTICAL 50
AIM: Programs on scipy
CODE:

GRAPH

import numpy as np
from scipy.sparse.csgraph import connected_components
from scipy.sparse import csr_matrix

arr = np.array([
  [0, 1, 2],
  [1, 0, 0],
  [2, 0, 0]
])

newarr = csr_matrix(arr)

print(connected_components(newarr))

OUTPUT:
 
 
INTERPOLATE

from scipy.interpolate import interp1d
import numpy as np

xs = np.arange(10)
ys = 2*xs + 1

interp_func = interp1d(xs, ys)

newarr = interp_func(np.arange(2.1, 3, 0.1))

print(newarr)

OUTPUT:

 


