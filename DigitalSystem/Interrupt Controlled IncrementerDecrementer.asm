0: CPi 100 15000000 	//set timer
1: NAND 99 99	
2: ADDi 99 1	//99=-1
3: ADD 100 99	//decrement value
4: CP 101 100 	//copy decreented value a temporary state
5: LTi 101 1	//compare deceremented value to 0
6: ADDi 101 99	// if 101 is equal to 0 Lti replace there 1, we have to mkae there 0
7: BZJ 98 101	//if 101 is Not equal to 0 then turn loop addres at 3
8: ADDi 4096 1	//if 101 is equal to 0 then increment the first register of the LED peripheral
9: BZJ 0 100	//Turn to beginning


98: 3
99: 1
100: 
101:     // COPY 100 