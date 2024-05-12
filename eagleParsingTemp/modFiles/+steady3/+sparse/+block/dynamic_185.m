function [y, T, residual, g1] = dynamic_185(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(11968)*y(12021))-(y(11969)*y(12022)+y(11971)*y(12023)+y(11973)*y(12024)+y(11975)*y(12025));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(11968);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
