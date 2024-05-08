function [y, T, residual, g1] = dynamic_185(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(995)*y(12692))-(y(6836)*(-params(69))-params(146)*y(7324)-params(223)*y(7812)-params(300)*y(8300)-params(377)*y(8788)-params(454)*y(9276)-params(531)*y(9764)-params(608)*y(10252)-params(685)*y(10740)-params(762)*y(11228)-params(839)*y(11716)-params(919)*y(12204));
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
