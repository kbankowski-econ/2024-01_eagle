function [y, T, residual, g1] = static_130(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(439)*y(1203))-(y(99)*(-params(81))-params(170)*y(375)-params(259)*y(651)-params(351)*y(927));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=params(439);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
