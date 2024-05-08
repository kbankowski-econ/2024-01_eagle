function [y, T, residual, g1] = dynamic_84(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5943)*y(5996))-(y(5944)*y(5997)+y(5946)*y(5998)+y(5948)*y(5999)+y(5950)*y(6000));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(5943);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
