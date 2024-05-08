function [y, T, residual, g1] = dynamic_110(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(8060)*y(8113))-(y(8061)*y(8114)+y(8063)*y(8115)+y(8065)*y(8116)+y(8067)*y(8117));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(8060);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
