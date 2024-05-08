function [y, T, residual, g1] = dynamic_99(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(533)*y(4680))-(y(2652)*(-params(69))-params(146)*y(2990)-params(223)*y(3328)-params(300)*y(3666)-params(377)*y(4004)-params(457)*y(4342));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=params(533);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
