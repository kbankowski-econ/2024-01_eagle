function [y, T, residual, g1] = static_369(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(5747)=params(380)*(y(2586)/T(939))^params(385);
  residual(1)=(y(2624))-((1-params(380))*(y(2657)/y(2656))^(-params(385))+y(2624)*T(5747));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(5747);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
