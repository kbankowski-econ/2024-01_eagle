function [y, T, residual, g1] = static_278(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(4193)=params(998)*(y(6241)/T(2290))^params(1003);
  residual(1)=(y(6277))-((1-params(998))*(y(6309)/y(6308))^(-params(1003))+y(6277)*T(4193));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(4193);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
