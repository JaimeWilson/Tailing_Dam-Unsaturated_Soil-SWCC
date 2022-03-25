% Soluçao da equação de Van Genuchten (1980) e Mualem (1976), usando Matlab    
% Pontificia Universidade Catolica do Rio de Janeiro  (SWCC)
% Calibração das Curvas de retenção para uma barragem de rejeito
% Data: 11-03-2018
% Jaime Andres Castañeda Barbosa 
% Curva de retenção de água ou curva carateristica do solo, fornece a
% relação entre o teor de água (theta) e o potencial de água sucção (psi),
% este é usado para medir a capacidade do solo, a qualidade do campo, a
% qualidade do solo, o armazenamento de água no solo. 
% Diferentes modelos podem ser usados para estudar a curva de retenção
% solo-água em um campo especifico.
% O programa abaixo mostra a curva de retenção de água para diferentes
% solos (areia, silte, silte argiloso) usando o modelo de Van Genchten que
% é amplamente usado para SWCC   (curvas de retenção solo-água)
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
close all;
clear
clc
%--------------------------------------------------------------------------
% Entradas:
% psi - Pressão de sucção([L] or cm of water)
% Saida:
% theta - curva de retenção água [L^3L^-3] que é a mesma Function
% (Van_Genuchten.m) nome de saida.
% Os dados foram pegados do seguinte link:
% https://de.wikipedia.org/wiki/Datei:Wrc.svg
% 
%--------------------------------------------------------------------------
% Areia:
%--------------------------------------------------------------------------
psi = linspace(1e0,1e3,1000);
%-------------------------------
[theta] = Van_Genuchten(0.5,0.1, 0.087424, 3 );
plot(psi,theta, 'displayname', 'Tailing Dam', 'linewidth', 2)
hold on
%--------------------------------------------------------------------------

title('Curva de Retenção solo-água')
legend ('show')
set(gca, 'XScale', 'log')
ax1 = gca;
xlabel(ax1, 'Sucção (kPa)', 'FontWeight', 'bold')
ylabel('\Theta (Teor de Umidade)', 'FontWeight', 'bold')
grid on
axis([1e0 1e2 0.1 0.5])
hold off

figure
% [K] = Van_Genuchten_k(0.00039, 0.087424, 1.5 );
[K] = Van_Genuchten_k(2e-6, 0.087424, 3 );
plot(psi,K, 'displayname', 'Tailing Dam', 'linewidth', 2)
title('Curva de permeabilidade')
legend ('show')
set(gca, 'XScale', 'log')
ax1 = gca;
xlabel(ax1, 'Sucção (kPa)', 'FontWeight', 'bold')
set(gca, 'YScale', 'log')
ay1 = gca;
ylabel('K (m/s)', 'FontWeight', 'bold')
grid on
axis([1e0 1e2 1e-13 2e-6])

