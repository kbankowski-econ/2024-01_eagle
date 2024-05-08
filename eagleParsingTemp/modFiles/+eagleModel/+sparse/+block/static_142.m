function [y, T, residual, g1] = static_142(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4406))-((1-params(856))*x(235)+y(4406)*params(856)+x(250));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(856);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
