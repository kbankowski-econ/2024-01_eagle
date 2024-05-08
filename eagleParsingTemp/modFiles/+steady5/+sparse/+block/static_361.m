function [y, T, residual, g1] = static_361(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(5125)=params(842)*(y(5540)/T(1047))^params(847);
  residual(1)=(y(5578))-((1-params(842))*(y(5611)/y(5610))^(-params(847))+y(5578)*T(5125));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(5125);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
