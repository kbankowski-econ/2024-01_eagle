function [y, T, residual, g1] = static_203(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(218)*y(266))-(y(219)*y(267)+y(220)*y(268)+y(221)*y(269)+y(222)*y(270));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(218);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
