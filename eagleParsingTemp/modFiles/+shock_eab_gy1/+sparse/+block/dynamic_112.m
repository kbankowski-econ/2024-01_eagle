function [y, T, residual, g1] = dynamic_112(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(12970)*y(13023))-(y(12971)*y(13024)+y(12973)*y(13025)+y(12975)*y(13026)+y(12977)*y(13027));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(12970);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
