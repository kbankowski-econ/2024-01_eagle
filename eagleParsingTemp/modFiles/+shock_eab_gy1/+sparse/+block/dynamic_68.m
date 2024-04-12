function [y, T, residual, g1] = dynamic_68(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3222)*y(3275))-(y(3223)*y(3276)+y(3225)*y(3277)+y(3227)*y(3278)+y(3229)*y(3279));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3222);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
