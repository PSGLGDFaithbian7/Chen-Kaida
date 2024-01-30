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

module delay2U(inR, outR);
input inR;
output outR;

wire outR0,outR1,outR2;
DEL1M4HM delay1 ( .A(inR), .Z(outR0) );
DEL1M4HM delay2 ( .A(outR0), .Z(outR1) );
DEL1M4HM delay3 ( .A(outR1), .Z(outR2) );
DEL1M4HM delay6 ( .A(outR2), .Z(outR) );
endmodule
