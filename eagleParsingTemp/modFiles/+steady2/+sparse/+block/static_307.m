function [y, T, residual, g1] = static_307(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1864))-(y(1885)*log(y(1726)-y(1726)*params(500))-1/(1+params(543))*y(1788)^(1+params(543))+y(1864)*params(483));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(483);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
