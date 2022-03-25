% Entrada:
% \psi é a sucção  - pressão de sucção ([L] ou cm de água)
% theta_s - teor volumetrico de água saturada [L^3L^?3]
% theta_r - teor volumetrico de água residual [L^3L^?3]
% alpha   - relacionado ao inverso da sucção de entrada de ar,
% alpha>0 ([L^-1], ou cm^-1)
% n       - medida da distribuição do tamanho dos poros, n>1 (adimensional)
% Saida:
% theta   -  Curva de retenção da água [L^3L^?3]
%--------------------------------------------------------------------------
% Van Genuchten (1980) and Mualem (1976) equation

function [ theta ] = Van_Genuchten(theta_s,theta_r, alpha, n )
psi = linspace(1e0,1e3,1000);
m = 1-(1/n);
theta = theta_r + ((theta_s-theta_r)./(1+(alpha*psi).^n).^m);
end
