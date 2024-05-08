function [y, T, residual, g1] = static_231(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3987)*y(4040))-(y(3988)*y(4041)+y(3990)*y(4042)+y(3992)*y(4043)+y(3994)*y(4044));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3987);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
