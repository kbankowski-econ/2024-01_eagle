function [y, T, residual, g1] = static_280(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(4978)=params(1401)*T(160)^params(1406);
  residual(1)=(y(5005))-((1-params(1401))*(y(5036)/y(5035))^(-params(1406))+y(5005)*T(4978));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(4978);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
