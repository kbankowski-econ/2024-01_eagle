function [y, T, residual, g1] = static_181(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1252)=params(226)*T(150)^params(231);
  residual(1)=(y(882))-((1-params(226))*(y(915)/y(914))^(-params(231))+y(882)*T(1252));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1252);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
