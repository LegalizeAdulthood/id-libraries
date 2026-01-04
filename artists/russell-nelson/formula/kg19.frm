;
;       These formulafiles are from Karl Geigl
;	please give comments and enjoy it!
;	karlgeigl@compuserve.com 
;
kg1901 {
	z=pixel, c=z+pixel:
	z=1/(z)+fn1(c),
	c=z*fn2(z),
	|z| <= p2
	}


kg1902 {
	z=1+pixel, c=p1-c:
	z=fn1(z+c)+fn2(c+z),
	c=p2+c,
	|z| <= p1
	}


kg1903 {
	z=z+1/pixel, c=1/pixel:
	z=1/fn1(z)+1/c,
	c=p2*1/c+z,
	|z| <= p1
	}


kg1904 {
	z=1/pixel, c=pixel/p1:
	z=fn1(z)+c,
	c=p2*c-fn2(c),
	|z| <= p1
	}


