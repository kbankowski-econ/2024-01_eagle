function [y, T, residual, g1] = static_186(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(2427)=params(197)*T(1178)^params(202);
  residual(1)=(y(614))-((1-params(197))*(y(646)/y(645))^(-params(202))+y(614)*T(2427));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(2427);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
