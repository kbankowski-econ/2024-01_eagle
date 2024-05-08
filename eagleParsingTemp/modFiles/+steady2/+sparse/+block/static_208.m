function [y, T, residual, g1] = static_208(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(938)*y(986))-(y(939)*y(987)+y(940)*y(988)+y(941)*y(989)+y(942)*y(990));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(938);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
