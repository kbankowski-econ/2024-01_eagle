function [y, T, residual, g1] = static_244(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3227)*y(3280))-(y(3228)*y(3281)+y(3230)*y(3282)+y(3232)*y(3283)+y(3234)*y(3284));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3227);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
