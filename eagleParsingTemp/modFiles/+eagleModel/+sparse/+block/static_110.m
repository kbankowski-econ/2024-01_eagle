function [y, T, residual, g1] = static_110(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(975)*y(1028))-(y(976)*y(1029)+y(978)*y(1030)+y(980)*y(1031)+y(982)*y(1032));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(975);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
