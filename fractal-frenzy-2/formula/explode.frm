{
	Here is the Fractint formula file used for explod.gif:
}

j1 {
	z=pixel, c=p1:
	z=sqr(z)+c,
	c=c+p2,
	|z| <= 4
	}

m1 {
	z=0, c=pixel:
	z=sqr(z)+c,
	c=c+p1,
	|z| <= 4
	}

jz {
	z=pixel, c=p1:
	z=sqr(z)+c,
	c=c+p2*z,
	|z| <= 4
	}

mz {
	z=0, c=pixel:
	z=sqr(z)+c,
	c=c+p1*z,
	|z| <= 4
	}

joz {
	z=pixel, c=p1:
	z=sqr(z)+c,
	c=c+p2/z,
	|z| <= 4
	}

moz {
	z=0, c=pixel:
	z=sqr(z)+c,
	c=c+p1/z,
	|z| <= 4
	}

jfnz {
	z=pixel, c=p1:
	z=sqr(z)+c,
	c=c+p2*fn1(z),
	|z| <= 4
	}

mfnz {
	z=0, c=pixel:
	z=sqr(z)+c,
	c=c+p1*fn1(z),
	|z| <= 4
	}

jc {
	z=pixel, c=p1:
	z=sqr(z)+c,
	c=c+p2*c,
	|z| <= 4
	}

mc {
	z=0, c=pixel:
	z=sqr(z)+c,
	c=c+p1*c,
	|z| <= 4
	}

joc {
	z=pixel, c=p1:
	z=sqr(z)+c,
	c=c+p2/c,
	|z| <= 4
	}

moc {
	z=0, c=pixel:
	z=sqr(z)+c,
	c=c+p1/c,
	|z| <= 4
	}

jfnc {
	z=pixel, c=p1:
	z=sqr(z)+c,
	c=c+p2*fn1(c),
	|z| <= 4
	}

mfnc {
	z=0, c=pixel:
	z=sqr(z)+c,
	c=c+p1*fn1(c),
	|z| <= 4
	}
