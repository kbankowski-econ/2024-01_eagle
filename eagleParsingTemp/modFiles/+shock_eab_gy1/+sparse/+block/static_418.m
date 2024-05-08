function [y, T, residual, g1] = static_418(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(5208)=params(568)*T(726)^params(573);
  residual(1)=(y(2903))-((1-params(568))*(y(2936)/y(2935))^(-params(573))+y(2903)*T(5208));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(5208);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
