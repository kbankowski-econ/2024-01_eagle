function [y, T, residual, g1] = dynamic_85(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4454)*y(4387))-(y(5009)*params(533)*y(5069)*y(4344)/params(377)+y(4640)*params(457)*y(4700)*y(4343)/params(377)+y(3901)*params(300)*y(3961)*y(4342)/params(377)+y(3532)*T(894)+y(2794)*T(1330)+y(3163)*params(146)*y(3223)*y(4340)/params(377));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4387);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
