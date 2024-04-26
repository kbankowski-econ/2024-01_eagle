function [y, T, residual, g1] = static_236(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(733)*y(785))-(y(734)*y(786)+y(736)*y(787)+y(738)*y(788)+y(740)*y(789));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(733);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
