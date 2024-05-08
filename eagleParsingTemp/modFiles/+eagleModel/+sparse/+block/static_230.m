function [y, T, residual, g1] = static_230(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1880)=params(352)*T(402)^params(357);
  residual(1)=(y(1345))-((1-params(352))*(y(1378)/y(1377))^(-params(357))+y(1345)*T(1880));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1880);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
