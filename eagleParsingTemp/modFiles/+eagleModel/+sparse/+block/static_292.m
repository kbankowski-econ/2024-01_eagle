function [y, T, residual, g1] = static_292(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4545)*y(4598))-(y(4546)*y(4599)+y(4548)*y(4600)+y(4550)*y(4601)+y(4552)*y(4602));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4545);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
