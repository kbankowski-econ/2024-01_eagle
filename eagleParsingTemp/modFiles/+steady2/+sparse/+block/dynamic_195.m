function [y, T, residual, g1] = dynamic_195(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(1567)*y(12120))-(y(6792)*(-params(113))-params(234)*y(7236)-params(355)*y(7680)-params(476)*y(8124)-params(597)*y(8568)-params(718)*y(9012)-params(839)*y(9456)-params(960)*y(9900)-params(1081)*y(10344)-params(1202)*y(10788)-params(1323)*y(11232)-params(1447)*y(11676));
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
