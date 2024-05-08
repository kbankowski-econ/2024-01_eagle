function [y, T, residual, g1] = static_339(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(1072)*y(6996))-(y(327)*(-params(69))-params(146)*y(840)-params(223)*y(1353)-params(300)*y(1866)-params(377)*y(2379)-params(454)*y(2892)-params(531)*y(3405)-params(608)*y(3918)-params(685)*y(4431)-params(762)*y(4944)-params(839)*y(5457)-params(916)*y(5970)-params(996)*y(6483));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=params(1072);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
