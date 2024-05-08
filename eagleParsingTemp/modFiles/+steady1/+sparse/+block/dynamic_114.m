function [y, T, residual, g1] = dynamic_114(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(610)*y(5742))-(y(3201)*(-params(69))-params(146)*y(3564)-params(223)*y(3927)-params(300)*y(4290)-params(377)*y(4653)-params(454)*y(5016)-params(534)*y(5379));
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
