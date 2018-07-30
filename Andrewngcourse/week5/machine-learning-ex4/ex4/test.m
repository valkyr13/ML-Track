sigma3 = h(:,1:end) - y_matrix(:,1:end);
sigma2 = (sigma3 .* sigmoidGradient(z2(:,1:end)) * Theta2);


delta2 = sigma2' * X ;
delta3 = sigma3'*a2 ;
delta2 = delta2(2:end,:);
Theta1_grad = delta2./m + lambda/m.*[zeros(size(Theta1,1),1) Theta1(:,2:end)];
Theta2_grad = delta3./m + lambda/m.*[zeros(size(Theta2,1),1) Theta2(:,2:end)];


Theta1_grad = Theta1_grad  + (dereg1.*lambda)./m;
Theta2_grad = Theta2_grad + (dereg2.*lambda)./m;
  dereg1 = [zeros(size(Theta1, 1)) Theta1(:,2:end)];
dereg2 = [zeros(size(Theta2, 1)) Theta2(:,2:end)];



  
p = sum(sum(Theta1_r.^2 ,2) + sum(sum(Theta2_r.^2) ,2);
  
  
  
J = (J + (lambda*p)/2)/m;
  
  %backpropagation
% -------------------------------------------------------------

% =========================================================================

% Unroll gradients

  
grad = [Theta1_grad(:) ; Theta2_grad(:)];