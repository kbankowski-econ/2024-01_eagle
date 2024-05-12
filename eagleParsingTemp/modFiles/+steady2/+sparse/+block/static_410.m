function [y, T, residual, g1] = static_410(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(7725)=params(124)*T(2022)^params(129);
  residual(1)=(y(415))-((1-params(124))*(y(447)/y(446))^(-params(129))+y(415)*T(7725));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(7725);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
