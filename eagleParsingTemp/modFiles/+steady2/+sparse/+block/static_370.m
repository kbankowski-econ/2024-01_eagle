function [y, T, residual, g1] = static_370(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(6774)=params(120)*T(1963)^params(125);
  residual(1)=(y(395))-((1-params(120))*(y(427)/y(426))^(-params(125))+y(395)*T(6774));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(6774);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
