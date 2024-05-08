function [y, T, residual, g1] = static_226(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1762)*y(1810))-(y(1763)*y(1811)+y(1764)*y(1812)+y(1765)*y(1813)+y(1766)*y(1814));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1762);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
