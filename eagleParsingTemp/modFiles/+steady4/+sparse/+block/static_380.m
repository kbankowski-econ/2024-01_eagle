function [y, T, residual, g1] = static_380(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(4546)=params(380)*T(195)^params(385);
  residual(1)=(y(2377))-((1-params(380))*(y(2410)/y(2409))^(-params(385))+y(2377)*T(4546));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(4546);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
