;	IMPRIMINDO NUMEROS DA TABELA ASCII
;	CODIGO 0XF000 IMPRIME USANDO O SISTEMA DA TABELA ASCII
main
	ldi	r1,48
	ldi	r2,49
	ldi	r3,50
	ldi	at,0xf000
	stw	r1,at
	stw	r2,at
	stw	r3,at
	hcf

