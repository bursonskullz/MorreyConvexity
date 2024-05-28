
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%% intantiation of variables %%%%%%%%%%%%%%%%%%%%

Npoints = 10;
gridSize = 1/Npoints;
constVec = [1,1];
wp = zeros(1,2); 
[x,y] = ndgrid(0:gridSize:1,0:gridSize:1)
W = [1,1] 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%% Main algorithm %%%%%%%%%%%%%%%%%%%%%%%%%%




%1. create constant epslon 2x2    ----
%2. create function               --- change when ready
%3. loop through change function 
%4. copute gradient of J_y anf each step using the double intergale method in matlab



epsilon = [1,0; 0,sqrt(3)]

functFGamma = @ x**2.0+ 1.0/y**2     % put our function here we want to test
DL = @ sin(X)+cos(y)
Wl = [2,2] % starting function in paper gradient phi(x,y) produce 2x2 matrix
WL = [0,0; 0,0]    


DL = [2,2] % starting function for JGamma
DL = [0,0; 0,0]    

for = 1: Npoints
	domain = 
	GFunct = 
	alphaTilda = newtonMethod(domain, GFunct, startingPoint)   % fix below for any fuction 
	
	WL[1,1] =  @func1
	WL[1,2] =  @funt2	
	WL[2,1] =  @funt3
	WL[2,2] =  @func4

	WL[1,1] = WL[1,1] + alphaTilda*DL[1,1]
	WL[1,2] = WL[1,2] + alphaTilda*DL[1,2]
	WL[2,1] = WL[1,1] + alphaTilda*DL[2,1]
	WL[2,2] = WL[2,1] + alphaTilda*DL[2,2]

	DL[1,1] =  @func5
	DL[1,2] =  @funt6	
	DL[2,1] =  @funt7
	DL[2,2] =  @func8

	DL[1,1] = DL[1,1] + alphaTilda*DL[1,1]
	DL[1,2] = DL[1,2] + alphaTilda*DL[1,2]
	DL[2,1] = DL[1,1] + alphaTilda*DL[2,1]
	DL[2,2] = DL[2,1] + alphaTilda*DL[2,2]



% end loop

	
%{
for k = 1: Npoints*Npoints
	    %% myfunct = ?
		%% alpha = newtonMethod(myfunct)
		%% W(k+1) = W(k)+ alpha*gradient(W(k)) %% need to be a function taking in an array
		

%print(X)
%print(y)

% accesing the points in the array


%X(0,0,0)
%y(0,0,0)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%% Plots for results %%%%%%%%%%%%%%%%%%%%%%%


%% plot F at differnt level curves
%% plot sum of partial of the function F (to see the total derivtaive)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%% End Algo %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%%%%%%%%%%%%%%%%%%%%%%Functions  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


function newtonMethod(domain,function, startingPoint)
	result = 1

function result = calWatPM(m) 
	result = -1^m*constVec   

function result = norm(vector)
	n = size(vector)
	sum = 0.0
	for i=1:n
		sum = sum + vector[n]^2
	result = sqrt(sum)

function result = newtonMethod(array)
	alpha = 0
	domain = ?
	function = ?
	arrayPrime = derivtaive(domain, function) 
	result =  alpha - array[alpha]/arrayPrime[alpha] 

function result = derivtaive(domain,range) 
    h = 0.0001
    array = []
    for x = 1: size(domain)-1
		array[x] = (range[x+1]-array[x])/h // THE range and domain must be meshed with same global variable H
	result = array

function result = determinant2x2(matrix)
	result = matrix(1,1)*matrix(2,2) - matrix(1,2)*matrix(2,1)

function result = f(y, matrix)
	vector = [matrix(1,1),matrix(1,2),matrix(2,1),matrix(2,2)]
	result = norm(vector)^4-y*norm(vector)^2*determinant2x2(matrix)

%%%% need to add graident and integrale function to compute graident of J_Y

%}
