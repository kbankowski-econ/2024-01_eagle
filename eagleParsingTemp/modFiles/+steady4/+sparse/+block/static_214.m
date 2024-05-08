function [y, T, residual, g1] = static_214(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2336)*y(2389))-(y(2337)*y(2390)+y(2339)*y(2391)+y(2341)*y(2392)+y(2343)*y(2393));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2336);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
