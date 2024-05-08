function [y, T, residual, g1] = static_126(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(611))-((-0.125)/(y(2153)*(y(2153)+y(2153)*y(2210)-1)));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=(-((-((-0.125)*y(2153)*y(2153)))/(y(2153)*(y(2153)+y(2153)*y(2210)-1)*y(2153)*(y(2153)+y(2153)*y(2210)-1))));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
