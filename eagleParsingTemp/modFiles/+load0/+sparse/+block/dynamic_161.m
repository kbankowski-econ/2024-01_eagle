function [y, T, residual, g1] = dynamic_161(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(9316)*y(9369))-(y(9317)*y(9370)+y(9319)*y(9371)+y(9321)*y(9372)+y(9323)*y(9373));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(9316);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
