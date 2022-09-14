% power method and rayleigh quotient

% Problem 3 
 
% Use power method to calculate a dominant eigenvector and eigenvalue of
 
A = [9 1; 1 2];
x = ones(2,1); % initial eigenvector
 
% find dominant eigenvalue by MATLAB eig
    eigenValues = eig(A);
    domEigVal = max(abs(eigenValues));
    disp(domEigVal);
% find dominant eigenvalue by power method
    for i = 1:20
        p = A*x;
        lambda = (transpose(x)*p)/(transpose(x)*x);  
% Rayleigh quotient
        [y,i] = max(abs(p));
        a = p(i);
        x = p/a;
    end
     disp(lambda); % dominant eigenvalue
     disp(x); % dominant eigenvector
     
     
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Problem 4
 
% Use QR algorithm to obtain the values of matrix B
B = [1 1 1; -1 9 2; 0 -1 2];
% disp(B);  
 
% Bk = QkRk
    % B(k + 1)  = transpose Qk * Bk * Qk { QR ALGORITHM }
    
% find eigenvalues using MATLAB eig
eigenValues = eig(B);
disp(eigenValues);
 
% iteration of QR algorithm to find eigenvalues
for i = 1:20
   [Q,R] = qr(B);
   B = transpose(Q)*B*Q;
end
 
% display eigenvalues of B by QR algorithm
     % Schur form of B
disp(B);
