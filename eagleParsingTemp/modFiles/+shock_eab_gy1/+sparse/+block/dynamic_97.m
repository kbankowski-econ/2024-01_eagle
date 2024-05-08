function [y, T, residual, g1] = dynamic_97(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(8119)*y(8172))-(y(8120)*y(8173)+y(8122)*y(8174)+y(8124)*y(8175)+y(8126)*y(8176));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(8119);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
