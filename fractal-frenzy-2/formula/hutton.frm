Chimney(XAXIS) {
    ; Classic fractal with different bailout criteria
    z=Pixel:
    z=sqr(z)+Pixel,
    abs(real(z))<=real(p1)
}
