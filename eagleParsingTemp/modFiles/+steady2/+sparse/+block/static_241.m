function [y, T, residual, g1] = static_241(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(3079)=params(205)*T(1020)^params(210);
  residual(1)=(y(655))-((1-params(205))*(y(687)/y(686))^(-params(210))+y(655)*T(3079));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(3079);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
