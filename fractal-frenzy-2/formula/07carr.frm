Carr-439 and higher


}

Carr-439{
z=exp(1.04)/pixel,c=z*(2*z*z-1):
z=z*z+c,
|z| <=10
}

Carr-440{;Distance Estimator works here.
z=0.524/pixel,c=z*(4*z*z-2):
z=z*z+c,
|z| <=10
}

Carr-441{;Distance Estimator works here.
z=0.524/pixel,c=z*(4*z*z-2):
z=z*z+c*c,
|z| <=10
}

Carr-442{;Distance Estimator works here.
z=0.524/pixel,c=z*(4*z*z-2):
z=z*z+c;
z=z*z+c,
|z| <=10
}

Carr-443{;Distance Estimator works here.
z=0.524/pixel,c=z*(4*z*z-2):
z=z*z*z+c;
z=z*z*z+c,
|z| <=10
}

Carr-444{;Distance Estimator works here.
z=0.524/pixel,c=z*(4*z*z-2):
z=z*z*z+c*c;
z=z*z*z+c*c,
|z| <=10
}

Carr-445{
z=0.524/pixel,c=z*(4*z*z-2):
z=z*z*z+flip(c*c),
|z| <=10
}

Carr-446{
z=0.524/pixel,c=z*(4*z*z-2):
z=z*z*z+cos(c*c),
|z| <=10
}

Carr-447{;Distance Estimator works here.
z=0.524/pixel-1,c=z*(4*z*z-2)-0.124:
z=z*z*z+conj(1/c*1/c),
|z| <=10
}

Carr-448{;Distance Estimator works here.
z=0.524/pixel-1,c=z*(4*z*z-2)-0.124:
z=z*z*z+conj(pixel/c*pixel/c),
|z| <=10
}

Carr-449{;Formula made by mistake. Hit cap for z= and got z+
z+(0.6,0.3)*pixel,c=1/pixel:
z=z*z+c,
|z| <=10
}

Carr-450{;If it worked once, try it again.
z+(0.6,0.3)*pixel,c=1/pixel:
z=z*z*z+c*c,
|z| <=10
}

Carr-451{;And again.
z+(0.6,0.3)*pixel,c=1/pixel:
z=z*z+c;
z=sin(z*z)+c,
|z| <=10
}

Carr-452{;Yet another.
z+(1.6,-0.3)^pixel,c=1/pixel:
z=z*z*z+c;
z=sin(z*z*z)+c,
|z| <=10
}

Carr-452{
z+(1.6,-0.3)^pixel,c=1/pixel:
z=sin(z*z*z)+c;
z=z*z*z+c,
|z| <=10
}

Carr-453{
z+1/pixel-0.124,c=1/pixel:
z=z*z*z+c,
|z| <=10
}

Carr-454{
z+1/pixel,c=1/pixel:
z=z*z*z+c;
z=(sin(z*z))+c*c;
z=sin(z*z*z)+c,
|z| <=10
}

Carr-455{;Distance Estimator works here.
z=1/pixel:
z=log(z*z)*pixel,
|z| <=10
}

Carr-456{;Distance Estimator works here.
z=1/pixel:
z=log(z*z*z)*pixel,
|z| <=10
}

Carr-457{;Distance Estimator works here.
z=1/pixel:
z=log(z*z*z*z)*pixel,
|z| <=10
}

Carr-458{;Distance Estimator works here.
z=1/pixel:
z=log(z*z*z*z*z*z)*pixel,
|z| <=10
}

Carr-459{;Distance Estimator works here.
z=1/pixel:
z=log(1/z*z*z*z*z*1/z)*pixel,
|z| <=10
}

Carr-460{;Distance Estimator works here.
z=1/pixel:
z=log(z/pixel*z*z*z*z*z/pixel)*pixel,
|z| <=10
}

Carr-461{;Distance Estimator works here.
z=1/pixel:
z=log(z/pixel*z*z*z*z*z/pixel)*1/pixel,
|z| <=10
}

Carr-462{;Distance Estimator works here.
z=1/pixel:
z=log(z/pixel*z/pixel*z/pixel)*pixel,
|z| <=10
}

Carr-463{;Distance Estimator works here.
z=1/pixel:
z=log(z/pixel*z/pixel*z/pixel*1/z)*pixel,
|z| <=10
}

Carr-464{;Distance Estimator works here.
z=1/pixel:
z=1/log(z*z*z*z)*pixel,
|z| <=10
}

Carr-465{;Somebody's Modified, I don't know who.
z=1/pixel:
z=z*z*z+1/z*z*z+pixel,
|z| <=10
}

Carr-466{;Distance Estimator works here.
z=1/pixel:
z=z*z*z+1/z*z*z*pixel,
|z| <=10
}

Carr-467{;Distance Estimator works here.
z=1/pixel:
z=z*z*z+1/z*1/z*1/z*pixel,
|z| <=10
}

Carr-468{;Distance Estimator works here.
z=1/pixel:
z=z*z*z+1/(1/pixel*1/pixel*1/pixel)+pixel,
|z| <=10
}

Carr-469{;Distance Estimator works here.
z=1/pixel:
z=z*z*z+1/(pixel*pixel-1)*z-pixel,
|z| <=10
}

Carr-470{
z=z*z*z+1/(pixel-1),c=1/pixel:
z=z*z+flip(c),
|z| <=10
}

Carr-471{;Distance Estimator works here.
z=1/(pixel-1),c=1/pixel:
z=z*z+flip(c),
|z| <=10
}

Carr-472{;Distance Estimator works here.
z=1/(pixel-1),c=1/pixel:
z=z*z+flip(c);
z=z*z+flip(c);
z=z*z+flip(c);
z=z*z+flip(c),
|z| <=10
}

Carr-473{
z=1/(pixel-1),c=1/pixel:
z=z*z+conj(c);
z=z*z+flip(c);
z=z*z+flip(c);
z=z*z+conj(c),
|z| <=10
}

Carr-474{;Distance Estimator works here.
z=conj(1/pixel*0.124),c=1/pixel:
z=z*z+conj(c);
z=z*z+conj(c);
z=z*z+conj(c);
z=z*z+conj(c),
|z| <=10
}

Carr-475{;Distance Estimator works here.
z=conj(1/pixel*0.124),c=1/pixel:
z=z*z*z+conj(c);
z=z*z*z+conj(c);
z=z*z*z+conj(c);
z=z*z*z+conj(c),
|z| <=10
}

Carr-476{
z=1/pixel*0.124,c=1/pixel:
z=fn1(z/pixel)*c,
|z| <=10
}

Carr-477{
z=1/pixel*0.124,c=1/pixel:
z=fn1(z/pixel*z/pixel)*c,
|z| <=10
}

Carr-478{;Very Strange !!
z=1/pixel*0.124,c=1/pixel:
z=1/(z*z)+c;
z=fn1(z/pixel)*c,
|z| <=10
}

Carr-479{;Distance Estimator works here.
z=1/pixel,c=fn2(z):
c=flip(c)+z;
z=z*z+c,
|z| <=10
}

Carr-480{;Distance Estimator works here.
z=1/pixel,c=fn2(1/z):
c=flip(c)+z;
z=z*z+c,
|z| <=10
}

Carr-481{;Distance Estimator works here.
z=1/pixel,c=fn2(1/z):
c=flip(c)*z;
z=z*z*z+c,
|z| <=10
}

Carr-482{;Distance Estimator works here.
z=1/pixel,c=fn2(1/z):
c=flip(c*c)*z;
z=z*z+c,
|z| <=10
}

Carr-483{;Distance Estimator works here.
z=1/pixel,c=fn2(1/z):
c=flip(0.124*c+0.724)*z;
z=z*z+c,
|z| <=10
}

Carr-484{;Distance Estimator works here.
z=1/pixel,c=fn2(1/z):
c=flip(0.124*c+0.724)*z;
z=z*z*z+c,
|z| <=10
}

Carr-485{;Distance Estimator works here.
z=1/pixel,c=fn2(1/z):
c=flip(0.124*c+0.724)*z;
z=z*z*z*z+c,
|z| <=10
}

Carr-486{;Distance Estimator works here.
z=pixel,c=fn2(1/z):
c=flip(0.124*c+0.724)*z;
z=z*z*z*z+c,
|z| <=10
}

Carr-487{;Distance Estimator works here.
z=pixel,c=fn2(1/z):
c=flip(conj(0.124*c+0.724)*z);
z=z*z*z*z+c,
|z| <=10
}

Carr-488{;Distance Estimator works here.
z=1/pixel,c=fn2(1/z):
c=flip(conj(0.124*c+0.724)*z);
z=z*z*z*z+c,
|z| <=10
}

Carr-489{;Distance Estimator works here.
z=1/pixel,c=fn2(1/z):
c=flip(conj(0.324*c+0.924)*z);
z=z*z*z*z+c,
|z| <=10
}

Carr-490{;Distance Estimator works here.
z=1/pixel,c=fn2(1/z):
c=flip(conj(0.724*c+0.924)*z);
z=z*z*z*z+c,
|z| <=10
}

Carr-491{;Distance Estimator works here.
z=1/pixel,c=fn2(1/z):
c=flip(conj(0.724*c+0.924)*z);
z=z*z*z*z+c/pixel,
|z| <=10
}

Carr-492{;Distance Estimator works here.
z=1/pixel,c=fn2(1/z):
c=flip(conj(0.724*c+0.924)*z);
z=1/z*z*z*1/z+c/pixel,
|z| <=10
}

Carr-493{;Distance Estimator works here.
z=1/pixel,c=fn2(1/z):
c=flip(sqr(0.724*c+0.924)*z);
z=z*z*z*z+c/pixel,
|z| <=10
}

Carr-494{;Distance Estimator works here.
z=1/pixel,c=fn2(1/z):
c=flip(sqr(0.724*c+0.924)*z);
z=z+c/pixel,
|z| <=10
}

Carr-495{
z=1/pixel,c=fn2(1/z):
c=tanh(sqr(0.724*c+0.924)*z);
z=z*z+c/pixel,
|z| <=10
}

Carr-496{
z=1/pixel,c=fn2(1/z):
c=conj(log(0.742*c+0.924)*z);
z=z*z+c/pixel,
|z| <=10
}

Carr-497{
z=1/pixel,c=fn2(1/z):
c=conj(log(0.742*c+0.942)*z);
z=z*z*z+c/pixel,
|z| <=10
}

Carr-498{;Distance Estimator works here.
z=1/pixel,c=fn4(1/z):
c=conj(log(0.724*c+0.924)*z);
z=z*z*z+c/pixel,
|z| <=10
}

Carr-499{
z=1.5/pixel,c=fn4(z/pixel):
c=conj(sqr(0.724*c+0.924)*z);
z=z*z*z+c/pixel+0.324,
|z| <=10
}

Carr-500{;Distance Estimator works here.
z=1/pixel,c=fn1(fn2(1/z))+1/pixel;
z=z*z+c,
|z| <=10
}
