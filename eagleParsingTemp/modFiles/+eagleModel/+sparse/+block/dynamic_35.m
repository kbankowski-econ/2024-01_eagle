function [y, T, residual, g1] = dynamic_35(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1951)*y(2004))-(y(1952)*y(2005)+y(1954)*y(2006)+y(1956)*y(2007)+y(1958)*y(2008));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1951);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
