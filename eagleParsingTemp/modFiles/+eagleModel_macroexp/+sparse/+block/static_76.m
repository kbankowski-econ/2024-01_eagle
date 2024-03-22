function [y, T, residual, g1] = static_76(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(730)=params(290)*(y(800)/T(485))^params(295);
  residual(1)=(y(828))-((1-params(290))*(y(858)/y(857))^(-params(295))+y(828)*T(730));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(730);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
