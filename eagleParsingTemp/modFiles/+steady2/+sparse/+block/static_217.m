function [y, T, residual, g1] = static_217(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(2090)=params(92)*T(476)^params(97);
  residual(1)=(y(286))-((1-params(92))*(y(318)/y(317))^(-params(97))+y(286)*T(2090));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(2090);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
