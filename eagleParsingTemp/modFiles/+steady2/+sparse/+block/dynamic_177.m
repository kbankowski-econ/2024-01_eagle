function [y, T, residual, g1] = dynamic_177(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(1398)*y(10622))-(y(5969)*(-params(109))-params(226)*y(6392)-params(343)*y(6815)-params(460)*y(7238)-params(577)*y(7661)-params(694)*y(8084)-params(811)*y(8507)-params(928)*y(8930)-params(1045)*y(9353)-params(1162)*y(9776)-params(1282)*y(10199));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=params(1398);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
