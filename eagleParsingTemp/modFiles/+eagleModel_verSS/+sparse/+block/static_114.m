function [y, T, residual, g1] = static_114(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(388)*y(430))-(y(389)*y(431)+y(391)*y(432));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(388);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
