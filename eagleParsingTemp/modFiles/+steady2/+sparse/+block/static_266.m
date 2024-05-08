function [y, T, residual, g1] = static_266(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2816)*y(2864))-(y(2817)*y(2865)+y(2818)*y(2866)+y(2819)*y(2867)+y(2820)*y(2868));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2816);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
