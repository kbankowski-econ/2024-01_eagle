function [y, T, residual, g1] = dynamic_96(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(11006)*y(11059))-(y(11007)*y(11060)+y(11009)*y(11061)+y(11011)*y(11062)+y(11013)*y(11063));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(11006);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
