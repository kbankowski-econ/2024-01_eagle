function [y, T, residual, g1] = static_193(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1574)=params(303)*T(433)^params(308);
  residual(1)=(y(1295))-((1-params(303))*(y(1328)/y(1327))^(-params(308))+y(1295)*T(1574));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1574);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
