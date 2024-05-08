function [y, T, residual, g1] = static_305(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3576))-(y(3597)*log(y(3438)-y(3438)*params(972))-1/(1+params(1015))*y(3500)^(1+params(1015))+y(3576)*params(955));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(955);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
