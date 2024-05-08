function [y, T, residual, g1] = dynamic_87(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(6741)*y(6794))-(y(6742)*y(6795)+y(6744)*y(6796)+y(6746)*y(6797)+y(6748)*y(6798));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(6741);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
