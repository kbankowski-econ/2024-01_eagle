function [y, T, residual, g1] = static_273(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3008))-(y(3028)*log(y(2870)-params(827)*y(2870))-1/(1+params(870))*y(2932)^(1+params(870))+params(810)*y(3008));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(810);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
