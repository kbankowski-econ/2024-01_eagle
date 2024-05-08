function [y, T, residual, g1] = dynamic_129(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(687)*y(6968))-(y(3864)*(-params(69))-params(146)*y(4252)-params(223)*y(4640)-params(300)*y(5028)-params(377)*y(5416)-params(454)*y(5804)-params(531)*y(6192)-params(611)*y(6580));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=params(687);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
