function [y, T, residual, g1] = static_313(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(6630))-(y(6652)*log(y(6486)-y(6486)*params(951))-1/(1+params(1002))*y(6554)^(1+params(1002))+y(6630)*params(932));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(932);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
