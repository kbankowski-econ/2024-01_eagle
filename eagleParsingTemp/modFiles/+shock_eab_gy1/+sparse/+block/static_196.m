function [y, T, residual, g1] = static_196(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(691))-(y(712)*log(y(2500)-params(120)*y(2500))-1/(1+params(168))*y(615)^(1+params(168))+params(101)*y(691));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(101);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
