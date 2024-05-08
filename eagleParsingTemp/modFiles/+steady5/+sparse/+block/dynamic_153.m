function [y, T, residual, g1] = dynamic_153(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(7917)*y(7969))-(y(7918)*y(7970)+y(7920)*y(7971)+y(7922)*y(7972)+y(7924)*y(7973));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(7917);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
