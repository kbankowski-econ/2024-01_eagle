function [y, T, residual, g1] = static_468(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(7731)=params(769)*T(384)^params(774);
  residual(1)=(y(2845))-((1-params(769))*(y(2877)/y(2876))^(-params(774))+y(2845)*T(7731));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(7731);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
