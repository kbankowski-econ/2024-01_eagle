function [y, T, residual, g1] = static_196(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1484))-(y(1505)*log(y(1358)-y(1358)*params(289))-1/(1+params(328))*y(1422)^(1+params(328))+params(272)*y(1484));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(272);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
