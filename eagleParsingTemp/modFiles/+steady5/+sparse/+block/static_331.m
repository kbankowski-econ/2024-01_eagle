function [y, T, residual, g1] = static_331(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(3951)=params(611)*T(1770)^params(616);
  residual(1)=(y(3641))-((1-params(611))*(y(3674)/y(3673))^(-params(616))+y(3641)*T(3951));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(3951);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
