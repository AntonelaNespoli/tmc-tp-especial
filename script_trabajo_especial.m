 %script_trabajo_especial
 
 clear %elimina las variables que se declaran en el  workspace
 clc %limpia la pantalla cada vez que corre
 
%Declaro mi primer EPSILON y hago funcionar al motor por primera vez,
%luego genero su correspondiente grafico:

epsilon_a = 0.1;
 
tic

%Llamo a mi motor de Montecarlo
[probabilidad, todas_las_probabilidades] = calcular_fallos_sucesivos(epsilon_a);

% Muestro por pantalla la propabilidad que me dio mi motor
fprintf('La probabilidad de exito con un Epsilon de 0.1, es: %d\n', probabilidad );
fprintf('\n');

% Genero el grafico
figure, plot(todas_las_probabilidades);
hold on;
grid on;
plot(ones(size(todas_las_probabilidades)) * 0.5, '--');
xlabel('Numero de iteracion');
ylabel('Probabilidad');
ylim([0 1]);
legend('Evolucion de la probabilidad', 'Probabilidad analitica');

%desvio estandar de las primeras y ultimas 20 probabilidades parciales:
fprintf('El desvio estandarde las primeras 20 probabilidades parciales es: %d\n', std(todas_las_probabilidades(1:20)))
fprintf('y de las últimas 20 es: %d\n', probabilidad_parcial_ultimos_veinte = std(todas_las_probabilidades(end-20:end)));
fprintf('\n');

tiempo = toc;
%Guardo el tic/toc en una variable y lo imprimo por pantalla junto a un string
fprintf('El tiempo que tomo calcular la probabilidad es: %d\n', tiempo);
fprintf('\n----------------------------------------------------\n');
%-------------------------------------------------------------------------------

%Declaro mi segundo EPSILON y hago funcionar al motor por segunda vez,
%luego genero su correspondiente grafico:

epsilon_b = 0.01;
 
tic

%Llamo a mi motor de Montecarlo
[probabilidad, todas_las_probabilidades] = calcular_fallos_sucesivos(epsilon_b);

% Muestro por pantalla la propabilidad que me dio mi motor
fprintf('La probabilidad de exito con un Epsilon de 0.01, es: %d\n', probabilidad );
fprintf('\n');

% Genero el grafico
figure, plot(todas_las_probabilidades);
hold on;
grid on;
plot(ones(size(todas_las_probabilidades)) * 0.5, '--');
xlabel('Numero de iteracion');
ylabel('Probabilidad');
ylim([0 1]);
legend('Evolucion de la probabilidad', 'Probabilidad analitica');

%desvio estandar de las primeras y ultimas 20 probabilidades parciales:
fprintf('El desvio estandarde las primeras 20 probabilidades parciales es: %d\n', std(todas_las_probabilidades(1:20)))
fprintf('y de las últimas 20 es: %d\n', probabilidad_parcial_ultimos_veinte = std(todas_las_probabilidades(end-20:end)));
fprintf('\n');

tiempo = toc;
%Guardo el tic/toc en una variable y lo imprimo por pantalla junto a un string
fprintf('El tiempo que tomo calcular la probabilidad es: %d\n', tiempo);
fprintf('\n----------------------------------------------------\n');
%-------------------------------------------------------------------------------

%Declaro mi tercer EPSILON y hago funcionar al motor por tercera vez,
%luego genero su correspondiente grafico:

epsilon_c = 0.001;
 
tic

%Llamo a mi motor de Montecarlo
[probabilidad, todas_las_probabilidades] = calcular_fallos_sucesivos(epsilon_c);

% Muestro por pantalla la propabilidad que me dio mi motor
fprintf('La probabilidad de exito con un Epsilon de 0.001, es: %d\n', probabilidad );
fprintf('\n');

% Genero el grafico
figure, plot(todas_las_probabilidades);
hold on;
grid on;
plot(ones(size(todas_las_probabilidades)) * 0.5, '--');
xlabel('Numero de iteracion');
ylabel('Probabilidad');
ylim([0 1]);
legend('Evolucion de la probabilidad', 'Probabilidad analitica');

%desvio estandar de las primeras y ultimas 20 probabilidades parciales:
fprintf('El desvio estandarde las primeras 20 probabilidades parciales es: %d\n', std(todas_las_probabilidades(1:20)))
fprintf('y de las últimas 20 es: %d\n', probabilidad_parcial_ultimos_veinte = std(todas_las_probabilidades(end-20:end)));
fprintf('\n');

tiempo = toc;
%Guardo el tic/toc en una variable y lo imprimo por pantalla junto a un string
fprintf('El tiempo que tomo calcular la probabilidad es: %d\n', tiempo);
fprintf('\n----------------------------------------------------\n');
%-------------------------------------------------------------------------------