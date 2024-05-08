function [y, T, residual, g1] = dynamic_183(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(11715)*y(11763))-(y(11716)*y(11764)+y(11717)*y(11765)+y(11718)*y(11766)+y(11719)*y(11767));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(11715);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
