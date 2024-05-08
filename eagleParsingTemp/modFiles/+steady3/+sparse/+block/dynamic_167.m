function [y, T, residual, g1] = dynamic_167(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(918)*y(11150))-(y(6057)*(-params(69))-params(146)*y(6520)-params(223)*y(6983)-params(300)*y(7446)-params(377)*y(7909)-params(454)*y(8372)-params(531)*y(8835)-params(608)*y(9298)-params(685)*y(9761)-params(762)*y(10224)-params(842)*y(10687));
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
