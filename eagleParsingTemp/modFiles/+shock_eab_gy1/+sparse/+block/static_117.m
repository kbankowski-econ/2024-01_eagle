function [y, T, residual, g1] = static_117(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(933)=params(163)*T(57)^params(168);
  residual(1)=(y(507))-((1-params(163))*(y(540)/y(539))^(-params(168))+y(507)*T(933));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(933);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
