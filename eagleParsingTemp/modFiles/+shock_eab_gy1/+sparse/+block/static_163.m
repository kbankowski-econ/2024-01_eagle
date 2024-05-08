function [y, T, residual, g1] = static_163(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(41)=log(y(4612));
  residual(1)=(T(41))-((1-params(1030))*log(x(296))+T(41)*params(1030)+x(311));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(4612)-params(1030)*1/y(4612);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
