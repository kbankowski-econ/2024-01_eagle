function [y, T, residual, g1] = dynamic_197(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(1072)*y(14452))-(y(7783)*(-params(69))-params(146)*y(8296)-params(223)*y(8809)-params(300)*y(9322)-params(377)*y(9835)-params(454)*y(10348)-params(531)*y(10861)-params(608)*y(11374)-params(685)*y(11887)-params(762)*y(12400)-params(839)*y(12913)-params(916)*y(13426)-params(996)*y(13939));
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
