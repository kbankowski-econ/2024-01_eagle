function [y, T, residual, g1] = static_202(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1574)=params(441)*T(865)^params(446);
  residual(1)=(y(1727))-((1-params(441))*(y(1760)/y(1759))^(-params(446))+y(1727)*T(1574));
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
