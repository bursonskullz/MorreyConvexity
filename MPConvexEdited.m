% TITLE: Morrey Conjecture
% DATE: 03-03-2021
% PURPOSE: OBTAIN Numerical Results concerning Morrey Conjecture

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%% intantiation of variables %%%%%%%%%%%%%%%%%%%%

L = 10
epsilon = [1,0; 0,sqrt(3)]
gamma = 2.2
xmin = 0.0 
xmax = 1.0 
ymin = 0.0 
ymax = 1.0

x = [0.0: 0.1: 1] 
y = [0.0: 0.1: 1]

Wl = [2,2] % starting function in paper gradient phi(x,y) produce 2x2 matrix
WL = [0,0; 0,0]    


DL = [2,2] % starting function for JGamma
DL = [0,0; 0,0]   

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%% Main algorithm %%%%%%%%%%%%%%%%%%%%%%%%%%


! test function needs to be correct and alphaTilda needs to be fixed
%1. create constant epslon 2x2    ----
%2. create test function               --- change when ready
%3. loop through change function 
%4. copute gradient of J_y anf each step using the double intergale method in matlab


for = 1: L    % create L different function for WL and DL 

	alphaTilda = newtonMethod(domain, GFunct, startingPoint)   % fix below for any fuctionn                 

	componentW1 = w1(firstW1, firstD1 x, y)       % takes in the old function and position (x,y)
	componentW2 = w1(firstW2, firstD2, x, y)       % takes in the old function and position (x,y)
	componentW3 = w1(firstW3, firstD3, x, y)       % takes in the old function and position (x,y)
	componentW4 = w1(firstW4, firstD4, x, y)       % takes in the old function and position (x,y)



	componentD1 = 
	componentD2 = 
	componentD3 = 
	componentD4 = 


	JGamma =  integral2(testFunction, xmin,ymin, xmax, ymax)  % pass in w1, w2,w3,w4
	%gradientJGamma = 

% end loop

%%%%%%%%%%%%%%%%%%%%%%%% END ALGO %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




%%%%%%%%%%%%%%%%%%functions%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function result  = w1(@anyname1, @anyname2 x,y)                  % this function is w1 component
	result =  anyname1(x,y) + alphaTilda *anyname2(x,y)

function result  = w2(@anyname1, @anyname1 x,y)                  % this function is w1 component
	result =  anyname1(x,y) + alphaTilda *anyname2(x,y)

function result  = w3(@anyname, @anyname1, x,y)                  % this function is w1 component
	result =  anyname1(x,y) + alphaTilda *anyname2(x,y)


function result  = w4(@anyname,  @anyname1, x,y)                  % this function is w1 component
	result =  anyname1(x,y) + alphaTilda *anyname2(x,y)

function result = firstW1(x,y)   % first component of w1 at L = 0  (this is given )
		result = x + y

function result = firstW2(x,y)   % first component of w1 at L = 0  (this is given )
		result = cos(x) + cos(y) 

function result = firstW3(x,y)   % first component of w1 at L = 0  (this is given )
		result = cos(x) + cos(y) 

function result = firstW4(x,y)   % first component of w1 at L = 0  (this is given )
		result = cos(x) + cos(y) 

function result = firstD1(x,y)   % first component of w1 at L = 0  (this is given )
		result = cos(x) + cos(y) 

function result = firstD2(x,y)   % first component of w1 at L = 0  (this is given )
		result = cos(x) + cos(y) 

function result = firstD3(x,y)   % first component of w1 at L = 0  (this is given )
		result = cos(x) + cos(y) 

function result = firstD4(x,y)   % first component of w1 at L = 0  (this is given )
		result = cos(x) + cos(y) 


function funcGamma = testFunction(matrix[2,2], testgamma)

	norm1 = matrix[1,1]**2+ matrix[1,2]**2+ matrix[2,1]**2 + matrix[2,2]**2
	det   = matrix[1,1]*matrix[2,2] -matrix[2,1]*matrix[1,2]

	funcGamma = norm1**4 - testgamma* norm1**2 * det
end 



% use matlab graidnet function
	




% examples
%{

function fun = function(x,y)
	fun = x*2+y*2


function doubleFun = function(@fun, x, y)
	doubleFun = fun(x,y)

%}

