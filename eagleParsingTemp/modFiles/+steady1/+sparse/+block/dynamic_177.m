function [y, T, residual, g1] = dynamic_177(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(9756)*y(9809))-(y(9757)*y(9810)+y(9759)*y(9811)+y(9761)*y(9812)+y(9763)*y(9813));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(9756);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
