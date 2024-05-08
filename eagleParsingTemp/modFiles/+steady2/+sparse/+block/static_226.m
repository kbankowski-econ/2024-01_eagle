function [y, T, residual, g1] = static_226(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(917))-(y(937)*log(y(779)-params(246)*y(779))-1/(1+params(289))*y(841)^(1+params(289))+params(229)*y(917));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(229);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
