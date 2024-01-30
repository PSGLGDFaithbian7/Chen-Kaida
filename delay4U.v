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

module delay4U(inR, outR);
input inR;
output outR;

wire outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7;
//DEL4UHDV1 delay1 ( .I(inR), .Z(outR0) );
//DEL4UHDV1 delay2 ( .I(outR0), .Z(outR1) );
//DEL4UHDV1 delay3 ( .I(outR1), .Z(outR2) );
//DLYCLK8S8_X1B_A9TRULP_C40_W3 delay4 ( .A(outR2), .Y(outR3) );
//DLYCLK8S8_X1B_A9TRULP_C40_W3 delay5 ( .A(outR3), .Y(outR4) );
//DEL4UHDV1 delay6 ( .I(outR2), .Z(outR) );
DEL1M4HM delay1 ( .A(inR), .Z(outR0) );
DEL1M4HM delay2 ( .A(outR0), .Z(outR1) );
DEL1M4HM delay3 ( .A(outR1), .Z(outR2) );
DEL1M4HM delay4 ( .A(outR2), .Z(outR3) );
DEL1M4HM delay5 ( .A(outR3), .Z(outR4) );
DEL1M4HM delay6 ( .A(outR4), .Z(outR5) );
DEL1M4HM delay7 ( .A(outR5), .Z(outR6) );
DEL1M4HM delay8 ( .A(outR6), .Z(outR7) );
DEL1M4HM delay9 ( .A(outR7), .Z(outR) );
endmodule
