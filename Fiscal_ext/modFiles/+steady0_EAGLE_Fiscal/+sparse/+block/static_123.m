function [y, T, residual, g1] = static_123(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(817))-(y(839)*log(y(667)-y(667)*params(198))-1/(1+params(256))*y(744)^(1+params(256))+y(817)*params(180));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(180);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
