# ClockSP5
 BBC BASIC Speed test

# Introduction

ClockSP5 is based on the orginal CLockSP by JGH. As emulators and BASIC systems have moved on in performance an imcrease in accuracy and repeatablity of the results is required. This version standing on the shoulders of JGH hopes to achive this. One of the original aims was that ClockSP was protable between different systems , this hopefully has been retained. 

NB results from the old ClockSP aren't comparable to the results from this version. 

# Files

ClockSP5.bas plain text BASIC file.
ClockSP5.ssd contains the BASIC test program suitable for most 8bit Acorn systems
ClockSP5.html contains an owlet link ( online emulator)

# Usage 

Simply RUN the program. The longer it runs the more accurate the results are.

# Configuration

At line 20 is a variable Z% which is used to configure specific usage.

Z% is broken up into nibbles &dcba NB &0311 is default option
      d = Specifies which version of basic the results are compared to
             0 detect current version of basic on a 6502 machine or select BASICII on non 6502 machine
             2 Force BASIC II
             3 Force BASIC 3 not supported yet
             4 Force BASIC 4
             5 Force BASIC 4r32
       c = number of iterations to run for - 1 ( 0 = 1 iterations)
       b =  0 Don't use 
            1 used irq enabled calibration data.
            +8 print internal debug / calibration data 
       a =  0 disable interrupts for repeatable results
            1 don't disable interrupts 


# Internal operation

