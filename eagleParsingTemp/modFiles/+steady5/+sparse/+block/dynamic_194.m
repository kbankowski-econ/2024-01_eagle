function [y, T, residual, g1] = dynamic_194(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(9362)*y(9414))-(y(9363)*y(9415)+y(9365)*y(9416)+y(9367)*y(9417)+y(9369)*y(9418));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(9362);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
