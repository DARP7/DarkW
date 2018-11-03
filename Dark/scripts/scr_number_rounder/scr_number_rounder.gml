/// @description con este script redondeare un numero a su valor entero mas cercano

var number = argument0;

var number_floor = floor(number);

var number_float = number - number_floor;

if(number_float > .5){
	return number_floor + 1;
}else{
	return number_floor;	
}