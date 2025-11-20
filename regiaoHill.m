
% Código das Regiões de Hill

function regiaoHill
mu =  0.0909;  % Parâmetro de Massa
C = [4.0, 3.5, 3.2, 3.0];   % Constantes de Jacobi
opacidade = 0.4; % 1.0 Opaco, 0.0 Transparente.
figure;
    for C = C  % Gambiarra (Melhorar isso)
            %Distâncias
            [X,Y,Z] = meshgrid(-6.0:0.05:6.0);
            r1 = sqrt((X+mu).^2 + Y.^2 + Z.^2);
            r2 = sqrt((X-(1-mu)).^2 + Y.^2 + Z.^2); 
            
            % função: 2U = C, v^2=0
            U = (X.^2+Y.^2) + 2.*(1-mu)./r1 + 2.*mu./r2;
            
  
            regiao = patch(isosurface(X, Y, Z, U, C), 'FaceColor', 'green', 'EdgeColor', 'none');
           camlight; lighting phong
            alpha(opacidade)
            hold on;
            axis off;
            grid off;
    end          
end
       