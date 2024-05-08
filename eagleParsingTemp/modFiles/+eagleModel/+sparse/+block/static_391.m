function [y, T, residual, g1] = static_391(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(4272)=params(465)*T(309)^params(470);
  residual(1)=(y(2292))-((1-params(465))*(y(2325)/y(2324))^(-params(470))+y(2292)*T(4272));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(4272);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
