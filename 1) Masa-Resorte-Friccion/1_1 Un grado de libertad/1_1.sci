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

// vector de tiempo
t = 0:0.01:10;

// señal de entrada escalón
u = ones(t);

// salida del sistema
y = csim(u, t, sys);

// -------- Ventana 1 --------
figure(1)

plot(t, u, 'r')
plot(t, y, 'g')

legend("Step (entrada)", "Salida del sistema")
xlabel("Tiempo (s)")
ylabel("y(t)")
title("Respuesta al escalón del sistema masa-resorte-amortiguador")


// -------- Ventana 2 --------
figure(2)

// respuesta al impulso
y_imp = csim('impuls', t, sys);
plot(t, u, 'r')
plot(t, y_imp, 'g')

legend("Impulse (entrada)", "Salida del sistema")
xlabel("Tiempo (s)")
ylabel("y(t)")
title("Respuesta al impulso")
