function [y, T, residual, g1] = static_151(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(815)=params(208)*T(221)^params(213);
  residual(1)=(y(684))-((1-params(208))*(y(714)/y(713))^(-params(213))+y(684)*T(815));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(815);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
