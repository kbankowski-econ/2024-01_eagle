function [y, T, residual, g1] = static_126(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3915))-((1-params(757))*x(207)+y(3915)*params(757)+x(222));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(757);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
