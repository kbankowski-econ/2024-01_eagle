function [y, T, residual, g1] = static_238(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(3735)=params(322)*(y(1039)/T(1848))^params(327);
  residual(1)=(y(1077))-((1-params(322))*(y(1109)/y(1108))^(-params(327))+y(1077)*T(3735));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(3735);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
