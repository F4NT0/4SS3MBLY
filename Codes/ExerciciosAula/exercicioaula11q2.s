;	EXERCICIO NUMERO 2 DA AULA 11 DE ORGARC
;	TRANSFORMAR CODIGO ABAIXO EM CODIGO ASSEMBLY
;	
;	if(a <= b || a == 7){
;		d = 1;
;	}else{
;		if(b > c){
;			d = 2;
;		}else{
;			d = 3;
;		 }
;	 }

main
	ldw	r1,a
	ldw	r2,b
	slt	r3,r2,r1
	sub	r4,r1,r2
	or	r5,r3,r4
	bez	r5,if_1
	bnz	r5,else_1
if_1
	ldw	r1,d
	add	r1,1
	stw	r1,d
	ldi	at,0xf002
	stw	r1,at
	hcf
else_1
	ldw	r6,c
	slt	r5,r6,r2
	bez	r5,else_2
	bnz	r5,if_2
if_2
	ldw	r1,d
	add	r1,2
	stw	r1,d
	ldi	at,0xf002
	stw	r1,at
	hcf
else_2
	ldw	r1,d
	add	r1,3
	stw	r1,d
	ldi	at,0xf002
	stw	r1,at
	hcf

a	4
b	6
c	2
d	0	
