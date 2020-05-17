# benchmarks_SafeEMC
SMT Benchmarks of Hybrid Systems used so far for Verification. 
Our tool-chain takes 1) plant model as hybrid automaton, 2) Controller program in C with standard input/output structures, 3) Configuration file with real-time disturbance(Jitter, Noise, Quantization error) specifications. It merges this implementation level details and encodes an SMT formula over Reals, to be solved bt dReal Solver. Every benchmark folder contains 

## .ha file
  containing Initial states and plant model
## .c, .h file
  with controller code, along with standard input output format in header file
## .cfg file
  with several implementation level details(Variable ranges, disturbances), Safety property and bound to be checked for
## output folders
   with sample runs as reported in paper,
   
   ### .log files
      with execution time logs,
   ### .smt2 files
      containing tool generated smt formula in smt-lib 2.0 format,
   ### .json files
      to visualize counter examples (instructions given in .log file)
   

