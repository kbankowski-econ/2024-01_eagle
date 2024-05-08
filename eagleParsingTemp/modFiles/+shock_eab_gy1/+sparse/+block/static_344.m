function [y, T, residual, g1] = static_344(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3527))-(y(3548)*log(y(5377)-params(707)*y(5377))-1/(1+params(755))*y(3451)^(1+params(755))+params(688)*y(3527));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(688);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
