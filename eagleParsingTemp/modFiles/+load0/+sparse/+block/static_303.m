function [y, T, residual, g1] = static_303(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5497)*y(5550))-(y(5498)*y(5551)+y(5500)*y(5552)+y(5502)*y(5553)+y(5504)*y(5554));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(5497);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
