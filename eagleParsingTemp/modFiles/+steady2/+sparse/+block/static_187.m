function [y, T, residual, g1] = static_187(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(2428)=params(805)*(y(2609)/T(987))^params(810);
  residual(1)=(y(2645))-((1-params(805))*(y(2676)/y(2675))^(-params(810))+y(2645)*T(2428));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(2428);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
