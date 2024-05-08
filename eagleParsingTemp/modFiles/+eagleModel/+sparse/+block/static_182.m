function [y, T, residual, g1] = static_182(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1957)*y(2010))-(y(1958)*y(2011)+y(1960)*y(2012)+y(1962)*y(2013)+y(1964)*y(2014));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1957);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
