function [ K ] = Van_Genuchten_k(k_s, alpha, n )
psi = linspace(1e0,1e3,1000);
m = 1-(1/n);
K = k_s*(((1-((alpha*psi).^(n*m)).*(1+(alpha*psi).^n).^-m).^2)./((1+(alpha*psi).^n).^(m/2)));
end
