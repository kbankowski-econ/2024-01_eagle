function [y, T, residual, g1] = static_140(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1075)=params(530)*(y(1712)/T(431))^params(535);
  residual(1)=(y(1748))-((1-params(530))*(y(1780)/y(1779))^(-params(535))+y(1748)*T(1075));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1075);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
