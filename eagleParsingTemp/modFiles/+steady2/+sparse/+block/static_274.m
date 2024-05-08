function [y, T, residual, g1] = static_274(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(278)*y(326))-(y(279)*y(327)+y(280)*y(328)+y(281)*y(329)+y(282)*y(330));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(278);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
