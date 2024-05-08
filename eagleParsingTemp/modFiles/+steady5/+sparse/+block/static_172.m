function [y, T, residual, g1] = static_172(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1883)=params(613)*T(277)^params(618);
  residual(1)=(y(2842))-((1-params(613))*(y(2874)/y(2873))^(-params(618))+y(2842)*T(1883));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1883);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
