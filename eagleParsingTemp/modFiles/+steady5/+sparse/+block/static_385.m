function [y, T, residual, g1] = static_385(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(5749)=params(919)*(y(6352)/T(439))^params(924);
  residual(1)=(y(6390))-((1-params(919))*(y(6423)/y(6422))^(-params(924))+y(6390)*T(5749));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(5749);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
