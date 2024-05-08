function [y, T, residual, g1] = dynamic_77(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3308)*y(3356))-(y(3309)*y(3357)+y(3310)*y(3358)+y(3311)*y(3359)+y(3312)*y(3360));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3308);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
