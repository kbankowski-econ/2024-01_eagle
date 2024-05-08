function [y, T, residual, g1] = dynamic_148(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(6512)*y(6565))-(y(6513)*y(6566)+y(6515)*y(6567)+y(6517)*y(6568)+y(6519)*y(6569));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(6512);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
