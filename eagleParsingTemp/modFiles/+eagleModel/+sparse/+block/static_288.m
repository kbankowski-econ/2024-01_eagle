function [y, T, residual, g1] = static_288(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4748)*y(4801))-(y(4749)*y(4802)+y(4751)*y(4803)+y(4753)*y(4804)+y(4755)*y(4805));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4748);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
