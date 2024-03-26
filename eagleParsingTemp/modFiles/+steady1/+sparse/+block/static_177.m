function [y, T, residual, g1] = static_177(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2057))-(y(2079)*log(y(1939)-y(1939)*params(409))-1/(1+params(448))*y(1998)^(1+params(448))+y(2057)*params(395));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(395);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
