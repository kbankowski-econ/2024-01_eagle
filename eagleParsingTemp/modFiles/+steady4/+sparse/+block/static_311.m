function [y, T, residual, g1] = static_311(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5771)*y(5824))-(y(5772)*y(5825)+y(5774)*y(5826)+y(5776)*y(5827)+y(5778)*y(5828));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(5771);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
