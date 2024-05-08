function [y, T, residual, g1] = dynamic_184(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(995)*y(12744))-(y(6888)*(-params(69))-params(146)*y(7376)-params(223)*y(7864)-params(300)*y(8352)-params(377)*y(8840)-params(454)*y(9328)-params(531)*y(9816)-params(608)*y(10304)-params(685)*y(10792)-params(762)*y(11280)-params(839)*y(11768)-params(919)*y(12256));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=params(995);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
