function [y, T, residual, g1] = static_286(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(6523)*y(6576))-(y(6524)*y(6577)+y(6526)*y(6578)+y(6528)*y(6579)+y(6530)*y(6580));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(6523);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
