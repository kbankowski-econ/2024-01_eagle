function [y, T, residual, g1] = static_214(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1172))-(y(1194)*log(y(1048)-y(1048)*params(220))-1/(1+params(258))*y(1110)^(1+params(258))+y(1172)*params(203));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(203);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
