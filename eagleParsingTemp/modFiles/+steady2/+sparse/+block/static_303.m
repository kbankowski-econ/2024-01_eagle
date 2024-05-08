function [y, T, residual, g1] = static_303(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(5180)=params(1285)*T(86)^params(1290);
  residual(1)=(y(4585))-((1-params(1285))*(y(4617)/y(4616))^(-params(1290))+y(4585)*T(5180));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(5180);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
