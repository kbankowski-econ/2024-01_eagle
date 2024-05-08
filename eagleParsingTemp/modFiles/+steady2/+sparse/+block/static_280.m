function [y, T, residual, g1] = static_280(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1760))-(y(1781)*log(y(1622)-y(1622)*params(480))-1/(1+params(523))*y(1684)^(1+params(523))+y(1760)*params(463));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(463);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
