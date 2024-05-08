function [y, T, residual, g1] = dynamic_125(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(6247)*y(6299))-(y(6248)*y(6300)+y(6250)*y(6301)+y(6252)*y(6302)+y(6254)*y(6303));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(6247);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
