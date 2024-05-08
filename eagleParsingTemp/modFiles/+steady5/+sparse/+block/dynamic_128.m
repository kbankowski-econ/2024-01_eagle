function [y, T, residual, g1] = dynamic_128(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(6203)*y(6255))-(y(6204)*y(6256)+y(6206)*y(6257)+y(6208)*y(6258)+y(6210)*y(6259));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(6203);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
