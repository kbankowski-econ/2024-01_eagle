function [y, T, residual, g1] = static_240(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(1084)*y(3628))-(y(199)*(-params(101))-params(210)*y(580)-params(319)*y(961)-params(428)*y(1342)-params(537)*y(1723)-params(646)*y(2104)-params(755)*y(2485)-params(864)*y(2866)-params(976)*y(3247));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=params(1084);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
