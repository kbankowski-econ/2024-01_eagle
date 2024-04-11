function [y, T, residual, g1] = dynamic_49(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4956)*y(5009))-(y(4957)*y(5010)+y(4959)*y(5011)+y(4961)*y(5012)+y(4963)*y(5013));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4956);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
