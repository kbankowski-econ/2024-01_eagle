function [y, T, residual, g1] = static_330(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(6362)*y(6410))-(y(6363)*y(6411)+y(6364)*y(6412)+y(6365)*y(6413)+y(6366)*y(6414));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(6362);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
