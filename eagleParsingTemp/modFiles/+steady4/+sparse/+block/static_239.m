function [y, T, residual, g1] = static_239(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2485)*y(2538))-(y(2486)*y(2539)+y(2488)*y(2540)+y(2490)*y(2541)+y(2492)*y(2542));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2485);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
