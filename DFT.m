% ==========================================================================
%> @brief computes N - point Discrete Fourier Transform 
%> called by ::DFT
%>
%> @param Signal: Discrete Time Domain Signal (dimension 1 X Observations)
%> @param N: N point DFT required
%>
%> @retval X: N - point Discrete Fourier Transform 
%>
%>
% ==========================================================================
%> by Muhammad Salman Kabir <http://muhammad-salman-kabir.mystrikingly.com/>
% ==========================================================================
function X=DFT(signal,N)

[r,c]=size(signal);
X=0;
Y=0;

for k=1:N
    for n=1:c
        
        Y=Y+[signal(n)*exp((-j*2*pi*(k-1)*(n-1))/N)];
        X(k)=Y;
    end
    Y=0;
end

disp("DFT of given sequence is: ");
disp(X');
end
