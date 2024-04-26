function [y, T, residual, g1] = static_232(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2923)*y(2975))-(y(2924)*y(2976)+y(2926)*y(2977)+y(2928)*y(2978)+y(2930)*y(2979));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2923);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
