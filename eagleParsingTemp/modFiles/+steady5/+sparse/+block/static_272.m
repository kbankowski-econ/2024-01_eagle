function [y, T, residual, g1] = static_272(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(2916)=params(534)*T(1396)^params(539);
  residual(1)=(y(2830))-((1-params(534))*(y(2863)/y(2862))^(-params(539))+y(2830)*T(2916));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(2916);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
