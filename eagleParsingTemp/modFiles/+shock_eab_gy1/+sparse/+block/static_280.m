function [y, T, residual, g1] = static_280(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(3473)=params(265)*(y(1176)/T(2003))^params(270);
  residual(1)=(y(1214))-((1-params(265))*(y(1247)/y(1246))^(-params(270))+y(1214)*T(3473));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(3473);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
