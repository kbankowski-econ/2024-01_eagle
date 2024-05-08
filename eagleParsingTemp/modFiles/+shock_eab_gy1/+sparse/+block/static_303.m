function [y, T, residual, g1] = static_303(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2677)*y(2730))-(y(2678)*y(2731)+y(2680)*y(2732)+y(2682)*y(2733)+y(2684)*y(2734));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2677);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
