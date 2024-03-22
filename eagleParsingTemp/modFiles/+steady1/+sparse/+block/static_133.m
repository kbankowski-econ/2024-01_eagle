function [y, T, residual, g1] = static_133(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(982))-(y(1004)*log(y(860)-y(860)*params(217))-1/(1+params(257))*y(920)^(1+params(257))+y(982)*params(200));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(200);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
