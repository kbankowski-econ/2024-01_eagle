function [y, T, residual, g1] = dynamic_173(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(14135)*y(14187))-(y(14136)*y(14188)+y(14138)*y(14189)+y(14140)*y(14190)+y(14142)*y(14191));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(14135);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
