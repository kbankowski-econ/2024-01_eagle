function [y, T, residual, g1] = dynamic_185(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(12158)*y(12206))-(y(12159)*y(12207)+y(12160)*y(12208)+y(12161)*y(12209)+y(12162)*y(12210));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(12158);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
