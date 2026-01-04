;
;       These formulafiles are from Karl Geigl
;	please give comments and enjoy it!
;	karlgeigl@compuserve.com 
;
kg2201 {
	z=pixel+c:
	z=fn1(z)^p1 + fn2(z)^p2 + c,
	|z| <= p2
	}

kg2202 {
	z=p1+pixel:
	z=fn1(z)*p1 + fn2(z)^p2 + c,
	|z| <= p2
	}

kg2203 {
	z=p1-pixel:
	z=fn1(z)/p1 + fn2(z)^p2 + c,
	|z| <= p2
	}

kg2204 {
	z=pixel^p1:
	z=fn1(z)/p1 ^ fn2(z)^p2 + c,
	|z| <= p2
	}

kg2205 {
	z=p1/pixel:
	z=fn1(z)/p1 ^ fn2(z)*p2 + c,
	|z| <= p2
	}


