function [y, T, residual, g1] = static_119(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1033)=params(137)*T(91)^params(142);
  residual(1)=(y(439))-((1-params(137))*(y(470)/y(469))^(-params(142))+y(439)*T(1033));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1033);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
