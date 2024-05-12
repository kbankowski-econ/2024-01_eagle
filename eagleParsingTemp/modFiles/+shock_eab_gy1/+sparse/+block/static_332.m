function [y, T, residual, g1] = static_332(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5540)*y(5593))-(y(5541)*y(5594)+y(5543)*y(5595)+y(5545)*y(5596)+y(5547)*y(5597));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(5540);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
