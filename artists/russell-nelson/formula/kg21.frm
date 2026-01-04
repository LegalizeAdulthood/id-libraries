;
;       These formulafiles are from Karl Geigl
;	please give comments and enjoy it!
;	karlgeigl@compuserve.com 
;
kg2101 {
	z=pixel:
	z=fn1(z)^p1 + fn2(z)^p2 + c,
	|z| <= p2
	}

kg2102 {
	z=pixel:
	z=fn1(z)*p1 + fn2(z)^p2 + c,
	|z| <= p2
	}

kg2103 {
	z=pixel:
	z=fn1(z)/p1 + fn2(z)^p2 + c,
	|z| <= p2
	}

kg2104 {
	z=pixel:
	z=fn1(z)/p1 ^ fn2(z)^p2 + c,
	|z| <= p2
	}


kg2105 {
	z=pixel:
	z=fn1(z)/p1 ^ fn2(z)*p2 + c,
	|z| <= p2
	}


