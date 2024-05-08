function [y, T, residual, g1] = static_285(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3406)*y(3454))-(y(3407)*y(3455)+y(3408)*y(3456)+y(3409)*y(3457)+y(3410)*y(3458));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3406);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
