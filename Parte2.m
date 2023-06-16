% Script: PB_Integrador.m
% Author: Federico, Scheytt - Joaquin, Gonzalez Targon
% Date: Junio 2023
clear,close all,clc
%% Parte 2
%parametros
u=2.5; 
d=0.3; 
k=130;
%parametros acumulados
Au=50*u;
Ad=sqrt(50)*d;
%calculo de probabilidad
P=1-normcdf(k,Au,Ad)
