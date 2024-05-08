function [y, T, residual, g1] = dynamic_82(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(6417)*y(6470))-(y(6418)*y(6471)+y(6420)*y(6472)+y(6422)*y(6473)+y(6424)*y(6474));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(6417);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
