function [y, T, residual, g1] = static_309(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5012)*y(5065))-(y(5013)*y(5066)+y(5015)*y(5067)+y(5017)*y(5068)+y(5019)*y(5069));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(5012);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
