function [y, T, residual, g1] = static_263(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(3419)=params(845)*(y(4993)/T(552))^params(850);
  residual(1)=(y(5031))-((1-params(845))*(y(5064)/y(5063))^(-params(850))+y(5031)*T(3419));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(3419);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
