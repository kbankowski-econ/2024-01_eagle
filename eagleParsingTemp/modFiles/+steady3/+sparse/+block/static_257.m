function [y, T, residual, g1] = static_257(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4779))-(y(4800)*log(y(4889)-params(797)*y(4889))-1/(1+params(847))*y(4706)^(1+params(847))+params(781)*y(4779));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(781);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
