function [y, T, residual, g1] = static_99(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(25)=log(y(3612));
  residual(1)=(T(25))-((1-params(668))*log(x(183))+T(25)*params(668)+x(198));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(3612)-params(668)*1/y(3612);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
