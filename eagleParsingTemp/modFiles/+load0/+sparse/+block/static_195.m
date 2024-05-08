function [y, T, residual, g1] = static_195(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1023)*y(1076))-(y(1024)*y(1077)+y(1026)*y(1078)+y(1028)*y(1079)+y(1030)*y(1080));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1023);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
