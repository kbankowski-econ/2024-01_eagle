function [y, T, residual, g1] = static_285(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(84)=params(999)^(-1);
  residual(1)=(y(5349)*(1-y(6899)))-(T(84)*y(5320));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-y(6899);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
