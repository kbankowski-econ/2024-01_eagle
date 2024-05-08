function [y, T, residual, g1] = static_239(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(3178)=params(844)*T(1585)^params(849);
  residual(1)=(y(4753))-((1-params(844))*(y(4785)/y(4784))^(-params(849))+y(4753)*T(3178));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(3178);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
