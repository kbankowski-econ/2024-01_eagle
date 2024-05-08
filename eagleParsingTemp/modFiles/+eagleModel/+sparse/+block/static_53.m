function [y, T, residual, g1] = static_53(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1830))-((1-params(351))*x(87)+y(1830)*params(351)+x(100));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(351);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
