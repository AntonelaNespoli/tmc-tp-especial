 %script_trabajo_especial
 
 clear %elimina las variables que se declaran en el  workspace
 clc %limpia la pantalla cada vez que corre
 

 epsilon = 0.1;
 
tic

%Llamo a mi motor de Montecarlo
[probabilidad, todas_las_probabilidades] = calcular_fallos_sucesivos(epsilon);

% Mostro por pantalla la propabilidad que me dio mi motor
fprintf('La probabilidad de exito es: %d\n', probabilidad);

% Genero el grafico
figure, plot(todas_las_probabilidades);
hold on;
grid on;
plot(ones(size(todas_las_probabilidades)) * 0.5, '--');
xlabel('Numero de iteracion');
ylabel('Probabilidad');
ylim([0 1]);
legend('Evolucion de la probabilidad', 'Probabilidad analitica');

toc
