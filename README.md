# BIST_fast_6_3_counter
the fast 6:3 binary counter is a 6  bit 1s counter which give a 3  bit output, the built in self test contains test patter generator, output response analyzer and controller.
The output response analyzer contains Multiple Input Shift Register and the Analyzer

The LFSR produces 64 different input patterns which is reduced to 8 bit by applying proper reset signal and given to the fast binary counter

MISR takes the 3 bit output of the CUT and produces different output patterns and on the 8th clock we get the signature which is analyzed by the analyzer.

## Simulation Results


![Imgur](https://i.imgur.com/BQ2BjMN.png)
