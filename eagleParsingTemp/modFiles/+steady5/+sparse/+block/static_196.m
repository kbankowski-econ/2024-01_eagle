function [y, T, residual, g1] = static_196(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(610)*y(2724))-(y(183)*(-params(69))-params(146)*y(546)-params(223)*y(909)-params(300)*y(1272)-params(377)*y(1635)-params(454)*y(1998)-params(534)*y(2361));
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
