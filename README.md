# mdsd.assignment.2

Includes assignment 2 of model driven software engineering.


```
// yields 1
result is 1+2-2/1

// defines 'g' = 2 
def g = 2 end 

// yields 16
result is 2*g*4

// yields 4, global definitions can be overwritten 
def g = 3 end
result is 1+2+g-1-2/2

// yields 14 
let x = 2*3 in x+x+2 end

// yields 18 
let x = 2 in (let x = 3 in x*x end)*x end

// yields 7, global definitions does not impact local let
def y = -2 end
def x = y*4*-1 end
result is x-g+y

// yields 66
let y = 2
	and x = y*4 
	and z = x*y
	and h = 18
	in x+y+z/6*10+h*2 end

// x is still defined as 4, yields 12   
result is x*2+y/1-2
```