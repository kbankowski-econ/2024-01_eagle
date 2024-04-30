function [y, T, residual, g1] = static_91(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(127)*y(180))-(y(128)*y(181)+y(130)*y(182)+y(132)*y(183)+y(134)*y(184));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(127);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
