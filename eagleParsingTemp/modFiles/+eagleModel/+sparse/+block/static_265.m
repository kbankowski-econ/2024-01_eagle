function [y, T, residual, g1] = static_265(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3862)*y(3915))-(y(3863)*y(3916)+y(3865)*y(3917)+y(3867)*y(3918)+y(3869)*y(3919));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3862);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
