function [y, T, residual, g1] = static_249(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4023)*y(4076))-(y(4024)*y(4077)+y(4026)*y(4078)+y(4028)*y(4079)+y(4030)*y(4080));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4023);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
