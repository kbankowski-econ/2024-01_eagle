function [y, T, residual, g1] = dynamic_145(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(1084)*y(7902))-(y(4473)*(-params(101))-params(210)*y(4854)-params(319)*y(5235)-params(428)*y(5616)-params(537)*y(5997)-params(646)*y(6378)-params(755)*y(6759)-params(864)*y(7140)-params(976)*y(7521));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=params(1084);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
