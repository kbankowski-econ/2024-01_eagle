function [y, T, residual, g1] = static_297(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(3746)=params(540)*T(543)^params(545);
  residual(1)=(y(1839))-((1-params(540))*(y(1871)/y(1870))^(-params(545))+y(1839)*T(3746));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(3746);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
