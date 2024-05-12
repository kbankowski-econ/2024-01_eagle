function [y, T, residual, g1] = static_357(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(7141)*y(7189))-(y(7142)*y(7190)+y(7143)*y(7191)+y(7144)*y(7192)+y(7145)*y(7193));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(7141);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
