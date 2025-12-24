Tan_Spirals {; Copyright (c) Paul W. Carlson, 1997
    width = real(p2), ratio = 124 / width, w = pixel, z = 0
    iter = 0, toggle = -1:
    ;
    w = p1 * tan(w)
    awr = abs(real(w))
    awi = abs(imag(w))
    IF (awr < awi)
        minw = awr
    ELSE
        minw = awi
    ENDIF
    bailout = (minw < width && |w| <= p3)
    toggle = -1 * toggle
    iter = iter + 1
    IF (bailout)
        z = ratio * minw + (toggle > 0) * 125 + 1
    ENDIF
    z = z - iter
    bailout == 0
}
