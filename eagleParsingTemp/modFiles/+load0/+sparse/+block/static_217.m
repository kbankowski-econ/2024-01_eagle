function [y, T, residual, g1] = static_217(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(872))-(y(893)*log(y(748)-params(155)*y(748))-1/(1+params(193))*y(810)^(1+params(193))+params(138)*y(872));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(138);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
