function [y, T, residual, g1] = static_454(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(7730)=params(898)*T(1354)^params(903);
  residual(1)=(y(3331))-((1-params(898))*(y(3363)/y(3362))^(-params(903))+y(3331)*T(7730));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(7730);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
