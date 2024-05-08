function [y, T, residual, g1] = static_253(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4237)*y(4290))-(y(4238)*y(4291)+y(4240)*y(4292)+y(4242)*y(4293)+y(4244)*y(4294));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4237);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
