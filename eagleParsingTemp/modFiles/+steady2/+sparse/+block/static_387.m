function [y, T, residual, g1] = static_387(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(6777)=params(1245)*T(3251)^params(1250);
  residual(1)=(y(4580))-((1-params(1245))*(y(4612)/y(4611))^(-params(1250))+y(4580)*T(6777));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(6777);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
