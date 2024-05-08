function [y, T, residual, g1] = dynamic_168(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(11927)*y(11980))-(y(11928)*y(11981)+y(11930)*y(11982)+y(11932)*y(11983)+y(11934)*y(11984));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(11927);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
