function [y, T, residual, g1] = static_314(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(1567)*y(5587))-(y(259)*(-params(113))-params(234)*y(703)-params(355)*y(1147)-params(476)*y(1591)-params(597)*y(2035)-params(718)*y(2479)-params(839)*y(2923)-params(960)*y(3367)-params(1081)*y(3811)-params(1202)*y(4255)-params(1323)*y(4699)-params(1447)*y(5143));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=params(1567);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
