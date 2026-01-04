
SymmIcon {
	z = P1,
	x = P2,
	bar = (1,-1),
	l = real(P1),
	a = imag(P2),
	b = .2,
	g = .1,
	w = 0,
        n = 5:

	zbar = z*bar;
	z = ((l + (a * z * zbar) + (b * real(z^n))  + (w * i)) * z) + g*(zbar^(n-1)) + pixel;
	}
	