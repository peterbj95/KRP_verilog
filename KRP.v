/****************************************
    KRP.v

    EE312 2017 KRP Processor
    Final Project
    
    Team00 : 
        20170000    Gil Dong Hong
        20170001    Cheol Soo
****************************************/


/////////////////////////////
//  TOP MODULE OF KRP
/////////////////////////////
module KRP (
    input     wire              CLK,
    input     wire              RST,
    output    wire              IREQ,
    output    wire    [31:2]    IADDR,
    input     wire    [31:0]    INSTR,
    output    wire              DREQ,
    output    wire              nDRW,
    output    wire    [31:2]    DADDR,
    output    wire    [31:0]    DWDATA,
    input     wire    [31:0]    DRDATA
);

/********************************
  Write your own test code here.
*********************************/

    /*REGISTER FILE FOR GENRAL PURPOSE REGISTERS*/
    REGFILE    #(.AW(5), .ENTRY(32))    RegFile (
                    .CLK    (CLK),
                    .RST    (RST),
                    .WEN    (),
                    .WA     (),
                    .DI     (),
                    .RA0    (),
                    .RA1    (),
                    .DOUT0  (),
                    .DOUT1  ()
    );

/********************************
  Write your own test code here.
*********************************/

endmodule


/*
    IF YOU WANT TO TEST YOUR DESIGN,
    PLEASE UTILIZE THE GIVEN TESTBENCH FILE (i.e. testbench.v),
    INSTANTIATE A KRP10 AND MEMORIES IN THAT FILE,
    AND WIRE THEM APPROPRIATELY.

    THEN, MODIFY THE VERILOG LIST FILE (i.e. test.f),
    INCLUDE model.v, KRP10.v, testbench.v, AND OTHER VERILOG FILES YOU CREATED.
*/
