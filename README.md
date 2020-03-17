# mdsd.assignment.2

```
// yields 4, global definitions can be overwritten
def g = 3 end
result is 1+2+g-1-2/2 

// yields 14 
let x = 2*3 in x+x+2 end

// yields 18
let x = 2 in (let x = 3 in x*x end)*x end

// global definitions does not impact local let
def x = 4 end 

// yields 66
let y = 2
	and x = y*4 
	and z = x*y
	and h = 18
	in x+y+z/6*10+h*2 end

// x is still defined as 4, yields 12  
result is x*2+6/1-2
```