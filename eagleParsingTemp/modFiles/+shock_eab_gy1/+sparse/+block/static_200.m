function [y, T, residual, g1] = static_200(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(617)*y(670))-(y(618)*y(671)+y(620)*y(672)+y(622)*y(673)+y(624)*y(674));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(617);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
