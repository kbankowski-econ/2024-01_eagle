function [y, T, residual, g1] = static_220(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1353)=params(202)*T(160)^params(207);
  residual(1)=(y(863))-((1-params(202))*(y(894)/y(893))^(-params(207))+y(863)*T(1353));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1353);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
