function [y, T, residual, g1] = static_140(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(814)=params(282)*T(488)^params(287);
  residual(1)=(y(931))-((1-params(282))*(y(961)/y(960))^(-params(287))+y(931)*T(814));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(814);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
