function [y, T, residual, g1] = static_239(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1168))-(y(1189)*log(y(1024)-params(218)*y(1024))-1/(1+params(266))*y(1092)^(1+params(266))+params(199)*y(1168));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(199);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
