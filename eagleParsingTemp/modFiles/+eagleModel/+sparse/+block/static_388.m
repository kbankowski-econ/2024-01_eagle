function [y, T, residual, g1] = static_388(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2785))-(y(2806)*log(y(2641)-params(518)*y(2641))-1/(1+params(566))*y(2709)^(1+params(566))+params(499)*y(2785));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(499);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
