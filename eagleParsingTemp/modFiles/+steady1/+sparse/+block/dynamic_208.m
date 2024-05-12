function [y, T, residual, g1] = dynamic_208(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(1149)*y(16172))-(y(8640)*(-params(69))-params(146)*y(9178)-params(223)*y(9716)-params(300)*y(10254)-params(377)*y(10792)-params(454)*y(11330)-params(531)*y(11868)-params(608)*y(12406)-params(685)*y(12944)-params(762)*y(13482)-params(839)*y(14020)-params(916)*y(14558)-params(993)*y(15096)-params(1073)*y(15634));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=params(1149);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
