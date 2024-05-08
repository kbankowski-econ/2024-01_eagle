function [y, T, residual, g1] = static_280(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(3729)=params(1046)*(y(4792)/T(896))^params(1051);
  residual(1)=(y(4830))-((1-params(1046))*(y(4863)/y(4862))^(-params(1051))+y(4830)*T(3729));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(3729);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
