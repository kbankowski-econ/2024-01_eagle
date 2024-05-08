function [y, T, residual, g1] = dynamic_113(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(610)*y(5774))-(y(3233)*(-params(69))-params(146)*y(3596)-params(223)*y(3959)-params(300)*y(4322)-params(377)*y(4685)-params(454)*y(5048)-params(534)*y(5411));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=params(610);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
