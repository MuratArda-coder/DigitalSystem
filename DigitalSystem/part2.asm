0: BZJ 2 3 // main code - jump to 10 th instruction 
1: 0 // becomes -1
2: 10 // copy address for timer
3: 0 // zero
4: 1562500 // TIMER
5: 500 //  reserved to keep the address of interrupt service routine
6: 0   // reserved to keep the address of the next instruction when interrupt occurs
7: 0 // Copy address of timer to compare
8: 0 // Copy address of flag to compare
9: 0

// MAIN CODE START//

10: CPi 1 1
11: NAND 1 1
12: ADDi 1 1 
13: CP 2 4 // Copies timer to address 2
14: ADD 2 1 // Subs 1
15: CP 7 2
16: LTi 7 1
17: BZJ 1001 7
18: CP 150 4112
19: BZJ 100 1000
20: ADD 4096 150
21: BZJ 101 3
22: NAND 150 150
23: ADDi 150 1
24: ADD 4096 150
25: BZJ 101 3



100: 22
101: 13

105: 503

150: 0


// ISR START //
500: BZJ 105 1000
501: ADD 1000 1
502: BZJ 6 3
503: ADDi 1000 1
504: BZJ 6 3 // Return from ISR


1000: 1 // Flag
1001: 14 // Jump address for inner loop

