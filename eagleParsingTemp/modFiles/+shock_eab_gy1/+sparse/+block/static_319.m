function [y, T, residual, g1] = static_319(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2496))-(y(2518)*log(y(4658)-y(4658)*params(508))-1/(1+params(556))*y(2420)^(1+params(556))+y(2496)*params(489));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(489);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
