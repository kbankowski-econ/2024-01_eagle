function [y, T, residual, g1] = static_230(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1348)=params(202)*T(169)^params(207);
  residual(1)=(y(862))-((1-params(202))*(y(893)/y(892))^(-params(207))+y(862)*T(1348));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1348);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
