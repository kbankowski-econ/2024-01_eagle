function [y, T, residual, g1] = dynamic_56(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(302)*y(2002))-(y(1213)*(-params(69))-params(146)*y(1476)-params(226)*y(1739));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=params(302);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
