function [y, T, residual, g1] = dynamic_128(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(6192)*y(6245))-(y(6193)*y(6246)+y(6195)*y(6247)+y(6197)*y(6248)+y(6199)*y(6249));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(6192);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
