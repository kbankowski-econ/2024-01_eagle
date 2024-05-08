function [y, T, residual, g1] = static_297(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(3948)=params(72)*(y(362)/T(1400))^params(77);
  residual(1)=(y(400))-((1-params(72))*(y(433)/y(432))^(-params(77))+y(400)*T(3948));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(3948);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
