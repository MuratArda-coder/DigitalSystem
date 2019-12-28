0: CPi 100 15000000 	//set timer
1: NAND 99 99	
2: ADDi 99 1	//99=-1
3: ADD 100 99	//decrement value
4: CP 101 100 	//copy decreented value a temporary state
5: LTi 101 1	//compare deceremented value to 0
6: ADDi 101 99	//if 101 is equal to 0 Lti replace there 1, we have to mkae there 0
7: BZJ 98 101	//if 101 is Not equal to 0 then turn loop addres at 3

8: BZJ 500 97 //interrupt service
9: 10 //next instruction addres

10: BZJ 14 102
11: ADDi 4096 1	//increment the first register of the LED peripheral
12: BZJ 0 100	//turn to beginning

14: ADD 4096 99 //decrement the first register of the LED peripheral
15: BZJ 0 100	//turn to beginning

97: 0
98: 3
99: 1
100: 
101:     // COPY 100 
102:	//operator


500: CPi 102 0	//decrement function will be active
501: BZJ 9 97