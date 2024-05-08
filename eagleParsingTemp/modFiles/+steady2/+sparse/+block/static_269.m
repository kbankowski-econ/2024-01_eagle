function [y, T, residual, g1] = static_269(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(701)*y(749))-(y(702)*y(750)+y(703)*y(751)+y(704)*y(752)+y(705)*y(753));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(701);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
