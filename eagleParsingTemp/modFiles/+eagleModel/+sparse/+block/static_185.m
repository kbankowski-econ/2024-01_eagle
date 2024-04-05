function [y, T, residual, g1] = static_185(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(554))-(y(576)*log(y(430)-y(430)*params(106))-1/(1+params(144))*y(492)^(1+params(144))+y(554)*params(89));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(89);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
