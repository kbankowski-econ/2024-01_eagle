function [y, T, residual, g1] = static_271(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3143))-(y(3164)*log(y(2999)-params(693)*y(2999))-1/(1+params(741))*y(3067)^(1+params(741))+params(674)*y(3143));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(674);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
