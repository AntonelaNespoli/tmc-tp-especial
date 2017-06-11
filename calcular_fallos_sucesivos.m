function [probabilidad, todas_las_probabilidades] = calcular_fallos_sucesivos(epsilon)

  todas_las_probabilidades = [];
  probabilidad_anterior = 0; 
  probabilidad_actual = 1;  
  casos_favorables = 0;
  total_de_experimentos = 0;
  

   while ~converge(probabilidad_anterior, probabilidad_actual, epsilon, total_de_experimentos)
 
    probabilidad_anterior = probabilidad_actual;
    valor_dni = my_mex_service(38006317);
    intento_1= valor_dni;
    intento_2= valor_dni;
      
    total_de_experimentos = total_de_experimentos+ 1;
    
    if ~(intento_1 || intento_2)
      casos_favorables = casos_favorables + 1;
    end
    
    probabilidad_actual = casos_favorables / total_de_experimentos;
    
    fprintf('%f\n', probabilidad_actual);
    fflush(stdout);
    
    % Esto es solamente para poder hacer el grafico ----------------------------
    todas_las_probabilidades = cat(1, todas_las_probabilidades, probabilidad_actual);
    % --------------------------------------------------------------------------
        
  end
  
  probabilidad = probabilidad_actual;

end