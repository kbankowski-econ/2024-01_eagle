function [y, T, residual, g1] = static_412(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(7726)=params(382)*T(2775)^params(387);
  residual(1)=(y(1387))-((1-params(382))*(y(1419)/y(1418))^(-params(387))+y(1387)*T(7726));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(7726);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
