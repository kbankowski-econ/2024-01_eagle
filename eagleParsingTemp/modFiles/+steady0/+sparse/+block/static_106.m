function [y, T, residual, g1] = static_106(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(852)=params(59)*(y(170)/T(398))^params(64);
  residual(1)=(y(200))-((1-params(59))*(y(231)/y(230))^(-params(64))+y(200)*T(852));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(852);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
