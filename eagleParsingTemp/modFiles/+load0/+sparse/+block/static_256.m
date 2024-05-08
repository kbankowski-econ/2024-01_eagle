function [y, T, residual, g1] = static_256(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(3394)=params(921)*(y(5455)/T(2040))^params(926);
  residual(1)=(y(5491))-((1-params(921))*(y(5523)/y(5522))^(-params(926))+y(5491)*T(3394));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(3394);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
