;
;       These formulafiles are from Karl Geigl 100327,156. 
;

kg1701 {
	z=pixel, c=pixel:
	z=fn1(z)+c,
	c=fn2(c)+z,
	|z| <= p2
	}


kg1702 {
	z=pixel, c=p1:
	z=fn1(z)+fn2(c),
	c=p2+c,
	|z| <= p1
	}


kg1703 {
	z=pixel, c=1/pixel:
	z=fn1(z)+c,
	c=p2*c,
	|z| <= p1
	}


kg1704 {
	z=1/pixel, c=p1:
	z=fn1(z)+c,
	c=p2*fn2(c),
	|z| <= p1
	}


