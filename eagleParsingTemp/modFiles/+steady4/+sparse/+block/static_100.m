function [y, T, residual, g1] = static_100(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(25)=log(y(2533));
  residual(1)=(T(25))-((1-params(532))*log(x(176))+T(25)*params(532)+x(190));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(2533)-params(532)*1/y(2533);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
