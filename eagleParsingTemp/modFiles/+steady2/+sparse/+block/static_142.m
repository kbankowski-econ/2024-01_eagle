function [y, T, residual, g1] = static_142(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1090)=params(354)*T(543)^params(359);
  residual(1)=(y(1043))-((1-params(354))*(y(1075)/y(1074))^(-params(359))+y(1043)*T(1090));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1090);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
