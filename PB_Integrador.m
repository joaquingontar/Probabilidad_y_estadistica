% Script: PB_Integrador.m
% Author: Federico, Scheytt - Joaquin, Gonzalez Targon
% Date: Junio 2023

clear, clc, close all 

% Carga de datos  
    T = readtable('Caso1.xlsx');
    n = 1000;
    
%% ----------------------------- Parte 1 ---------------------------------%
% 1) Estaciones mas y menos frecuentes de anclado de bicis.
    tbl = tabulate(T.Destino);
    t = cell2table(tbl,'VariableNames',{'Destino','Frecuencia','Proporcion'});
    t = sortrows(t,'Frecuencia','descend');
    t.Value = categorical(t.Destino);
    figure(1)
    %grafico de barras
        bar(t.Value,t.Frecuencia),grid on;
        ylabel('Frecuencia absoluta')
        title('grafico de barras')
        
%% 2) Variable tipo viaje
    tbl2 = tabulate(T.TipoViaje);
    t2 = cell2table(tbl2,'VariableNames',{'TipoViaje','Frecuencia','Proporcion'});
    t2 = sortrows(t2,'Frecuencia','descend');
    t2.Value = categorical(t2.TipoViaje);
    figure(6)
    %grafico de barras
        bar(t2.Value,t2.Frecuencia),grid on;
        ylabel('Frecuencia absoluta')
        title('grafico de barras')
        
        
%% 3) Estacion poblaional de proporcion de excesos de tiempo
    % Frecuencia relativa
        fAbs = numel(find(T.Tiempo > 3600));
        fRel = fAbs/n;
        
%% 5) Analisis descriptivo de la variable Tiempo
    % Histograma
        figure(2)
            hist(T.Tiempo,numel(T.Tiempo)/10),grid on;
            xlabel('Tiempo')
            ylabel('Frecuencia absoluta')
            title('Histograma')
    % Diagrama de caja y bigotes
        figure(3)
            boxplot(T.Tiempo)
            ylabel('Tiempo')     
            title('Diagrama de caja y bigote')
    % Medidas de localizacion y resumen
        % Maximo y minimo
            minTiempo = min(T.Tiempo)
            maxTiempo = max(T.Tiempo)
        % Cuartiles
            Q1 = prctile(T.Tiempo,25)
            Q2 = prctile(T.Tiempo,50)
            Q3 = prctile(T.Tiempo,75) 
        % Rango intercuartilico
            RIC = iqr(T.Tiempo)
        % Promedio o media aritmetica
            media = mean(T.Tiempo)
        % Varianza
            varianza = var(T.Tiempo)
        % Desviacion estandar
            desvio = std(T.Tiempo)
        % Mediana
            mediana = median(T.Tiempo)
        % Moda
            moda = mode(T.Tiempo);

%% 6) Intervalos de confianza para promedio de tiempos
    % a) Calculo de mu con sigma cuadrado desconocido (Tiempo)
        % tStudent
            
    % b) Calculo de mu con sigma cuadrado desconocido (logTiempo)
    
        % Histograma de logaritmo
            figure(4)
                hist(T.logTiempo,numel(T.logTiempo)/10),grid on;
                xlabel('logTiempo')
                ylabel('Frecuencia absoluta')
                title('Histograma logaritmo')
        % Diagrama de caja y bigotes
            figure(5)
                boxplot(T.logTiempo)
                ylabel('logTiempo')
                title('Diagrama de caja y bigote logaritmo')
    
        % Promedio o media aritmetica
            mediaLogTiempo = mean(T.logTiempo);
        % Desviacion estandar
            desvioLogTiempo = std(T.logTiempo);
    
        


    
