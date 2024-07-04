# Valid variable names
myVar=10
MyVar=20
_my_var=30
myVar2=40

# Invalid variable names
2myVar=50   # Starts with a number
my Var=60   # Contains a space

echo $myVar $MyVar $_my_var $myVar2 $2myVar