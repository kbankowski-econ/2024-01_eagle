function [y, T, residual, g1] = static_336(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3740)*y(3788))-(y(3741)*y(3789)+y(3742)*y(3790)+y(3743)*y(3791)+y(3744)*y(3792));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3740);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
