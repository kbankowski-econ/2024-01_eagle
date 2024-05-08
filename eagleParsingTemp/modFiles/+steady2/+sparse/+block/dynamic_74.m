function [y, T, residual, g1] = dynamic_74(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(439)*y(2712))-(y(1608)*(-params(81))-params(170)*y(1884)-params(259)*y(2160)-params(351)*y(2436));
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
