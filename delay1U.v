//-----------------------------------------------
//	module name: delay1U
//	author: Fu Tong , Baoxia Wan , Mingshu Chen
//  modifier: 
//  	modifyer: Anping HE (heap@lzu.edu.cn)
//  		adopting FDPE explicitly
//	version: 2nd version (2021-11-17)
//	description: 
//		one unit delay
//      output ==> input (==>:one uint delay)
//-----------------------------------------------
`timescale 1ns / 1ps

module delay1U(inR, outR);
input inR;
output outR;

wire outR0;
DEL1M4HM delay1 ( .A(inR), .Z(outR0) );
DEL1M4HM delay6 ( .A(outR0), .Z(outR) );
endmodule
