function [y, T, residual, g1] = static_340(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2005)*y(2058))-(y(2006)*y(2059)+y(2008)*y(2060)+y(2010)*y(2061)+y(2012)*y(2062));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2005);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
