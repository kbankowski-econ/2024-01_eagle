function [y, T, residual, g1] = static_182(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(526)*y(1878))-(y(132)*(-params(68))-params(144)*y(423)-params(220)*y(714)-params(296)*y(1005));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=params(526);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
