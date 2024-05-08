function [y, T, residual, g1] = static_234(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1000)*y(1048))-(y(1001)*y(1049)+y(1002)*y(1050)+y(1003)*y(1051)+y(1004)*y(1052));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1000);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
