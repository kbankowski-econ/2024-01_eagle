function [y, T, residual, g1] = dynamic_161(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(7719)*y(7767))-(y(7720)*y(7768)+y(7721)*y(7769)+y(7722)*y(7770)+y(7723)*y(7771));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(7719);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
