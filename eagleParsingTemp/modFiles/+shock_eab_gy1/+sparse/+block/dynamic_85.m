function [y, T, residual, g1] = dynamic_85(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5579)*y(5632))-(y(5580)*y(5633)+y(5582)*y(5634)+y(5584)*y(5635)+y(5586)*y(5636));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(5579);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
