function [y, T, residual, g1] = static_211(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1412))-(y(1434)*log(y(1288)-y(1288)*params(346))-1/(1+params(384))*y(1350)^(1+params(384))+y(1412)*params(329));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(329);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
