m = 1;
b = 1;
k = 1;

A = [0 1 ; -k/m -b/m];
B = [0 ; 1/m];
C = [1 0];
D = 0;

sys = syslin('c',A,B,C,D);
H = ss2tf(sys);

disp(sys)
disp(H)
