function [probabilidad, todas_las_probabilidades] = calcular_fallos_sucesivos(epsilon)

  %inicializo las variables:
  todas_las_probabilidades = [];
  probabilidad_anterior = 0; 
  probabilidad_actual = 1;  
  casos_favorables = 0;
  total_de_experimentos = 0;
  

   % Mientras el algoritmo no converge:
   while ~converge(probabilidad_anterior, probabilidad_actual, epsilon, total_de_experimentos)
   
   % La probabilidad anterior es la probabilidad actual:
    probabilidad_anterior = probabilidad_actual;
   
    % Pongo mi funcion my_mex_service en una variable y la llamo en las variables
    % intento_1 e intento_2:
    solicitud_permiso = my_mex_service(38006317);
    
    %Pido permiso para disparar dos veces seguidas:
    intento_1= solicitud_permiso;
    intento_2= solicitud_permiso;
    
    % Actualizo la cantidad de experimentos 
    total_de_experimentos = total_de_experimentos+ 1;
    
    %Chequeo si los dos pedidos son falsos, osea me da dos ceros:
    if ~(intento_1 || intento_2)
      casos_favorables = casos_favorables + 1;
    end
    
    % Calculo la probabilidad actual:
    probabilidad_actual = casos_favorables / total_de_experimentos;
    
    % Imprimo por pantalla las probabilidades:
    fprintf('%f\n', probabilidad_actual);
    fflush(stdout);
    
    % Esto es solamente para poder hacer el grafico ----------------------------
    todas_las_probabilidades = cat(1, todas_las_probabilidades, probabilidad_actual);
    % --------------------------------------------------------------------------
        
  end
  
  % Devuelvo la probabilidad actual:
  probabilidad = probabilidad_actual;

end