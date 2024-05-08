function [y, T, residual, g1] = dynamic_176(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(9875)*y(9927))-(y(9876)*y(9928)+y(9878)*y(9929)+y(9880)*y(9930)+y(9882)*y(9931));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(9875);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
