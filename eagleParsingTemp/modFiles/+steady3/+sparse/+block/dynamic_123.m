function [y, T, residual, g1] = dynamic_123(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(7007)*y(7060))-(y(7008)*y(7061)+y(7010)*y(7062)+y(7012)*y(7063)+y(7014)*y(7064));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(7007);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
