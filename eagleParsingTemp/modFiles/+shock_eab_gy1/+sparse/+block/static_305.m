function [y, T, residual, g1] = static_305(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3334))-(y(3356)*log(y(4666)-y(4666)*params(700))-1/(1+params(748))*y(3258)^(1+params(748))+y(3334)*params(681));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(681);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
