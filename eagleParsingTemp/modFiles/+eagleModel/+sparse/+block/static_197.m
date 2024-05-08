function [y, T, residual, g1] = static_197(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2754))-(y(2776)*log(y(2614)-y(2614)*params(679))-1/(1+params(729))*y(2681)^(1+params(729))+y(2754)*params(663));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(663);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
