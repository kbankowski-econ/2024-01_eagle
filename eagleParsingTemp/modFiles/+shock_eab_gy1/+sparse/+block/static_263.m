function [y, T, residual, g1] = static_263(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4305)*y(4358))-(y(4306)*y(4359)+y(4308)*y(4360)+y(4310)*y(4361)+y(4312)*y(4362));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4305);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
