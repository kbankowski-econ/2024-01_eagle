function [y, T, residual, g1] = static_197(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2057))-(y(2077)*log(y(1919)-params(537)*y(1919))-1/(1+params(583))*y(1981)^(1+params(583))+params(520)*y(2057));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(520);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
