function [y, T, residual, g1] = dynamic_183(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(12446)*y(12499))-(y(12447)*y(12500)+y(12449)*y(12501)+y(12451)*y(12502)+y(12453)*y(12503));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(12446);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
