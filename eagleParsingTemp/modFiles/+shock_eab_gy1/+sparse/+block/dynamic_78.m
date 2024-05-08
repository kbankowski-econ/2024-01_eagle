function [y, T, residual, g1] = dynamic_78(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(7674)*y(7727))-(y(7675)*y(7728)+y(7677)*y(7729)+y(7679)*y(7730)+y(7681)*y(7731));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(7674);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
