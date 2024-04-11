function [y, T, residual, g1] = static_210(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1698)=params(303)*T(530)^params(308);
  residual(1)=(y(1418))-((1-params(303))*(y(1451)/y(1450))^(-params(308))+y(1418)*T(1698));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1698);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
