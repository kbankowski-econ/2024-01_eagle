function [y, T, residual, g1] = dynamic_167(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(918)*y(11102))-(y(6009)*(-params(69))-params(146)*y(6472)-params(223)*y(6935)-params(300)*y(7398)-params(377)*y(7861)-params(454)*y(8324)-params(531)*y(8787)-params(608)*y(9250)-params(685)*y(9713)-params(762)*y(10176)-params(842)*y(10639));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=params(918);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
