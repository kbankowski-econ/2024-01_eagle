function [y, T, residual, g1] = static_289(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1240))-(y(1261)*log(y(1096)-params(220)*y(1096))-1/(1+params(268))*y(1164)^(1+params(268))+params(201)*y(1240));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(201);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
