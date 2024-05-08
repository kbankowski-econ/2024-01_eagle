function [y, T, residual, g1] = dynamic_112(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(6718)*y(6766))-(y(6719)*y(6767)+y(6720)*y(6768)+y(6721)*y(6769)+y(6722)*y(6770));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(6718);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
