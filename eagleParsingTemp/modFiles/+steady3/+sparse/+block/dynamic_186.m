function [y, T, residual, g1] = dynamic_186(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(11430)*y(11483))-(y(11431)*y(11484)+y(11433)*y(11485)+y(11435)*y(11486)+y(11437)*y(11487));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(11430);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
