function [y, T, residual, g1] = dynamic_110(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3913)*y(3966))-(y(3914)*y(3967)+y(3916)*y(3968)+y(3918)*y(3969)+y(3920)*y(3970));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3913);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
