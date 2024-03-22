function [y, T, residual, g1] = static_129(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(223))-(y(245)*log(y(101)-y(101)*params(25))-1/(1+params(62))*y(161)^(1+params(62))+y(223)*params(8));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(8);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
