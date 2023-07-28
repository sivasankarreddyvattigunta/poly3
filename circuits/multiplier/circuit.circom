pragma circom 2.0.0;

/*This circuit template checks that c is the multiplication of a and b.*/  

template Multiplier2 () {  

   signal input a;
   signal input b;
   signal x;
   signal y;
   signal output z;
   component andgate=AND();
   component orgate=OR();
   andgate.a<==a;
   andgate.b<==b;
   x<==andgate.out;
   orgate.a<==a;
   orgate.b<==b;
   y<==orgate.out;
   component org=OR();
   org.a<==x;
   org.b<==y;
   z<==org.out;}
   template AND() {
    signal input a;
    signal input b;
    signal output out;

    out <== a*b;
}

template OR() {
    signal input a;
    signal input b;
    signal output out;

    out <== a + b - a*b;
}



component main = Multiplier2();