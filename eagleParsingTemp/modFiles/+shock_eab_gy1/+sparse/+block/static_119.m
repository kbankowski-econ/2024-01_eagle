function [y, T, residual, g1] = static_119(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(664)=params(162)*T(95)^params(167);
  residual(1)=(y(459))-((1-params(162))*(y(492)/y(491))^(-params(167))+y(459)*T(664));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(664);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
