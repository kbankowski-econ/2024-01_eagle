function [y, T, residual, g1] = dynamic_185(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(8680)*y(8733))-(y(8681)*y(8734)+y(8683)*y(8735)+y(8685)*y(8736)+y(8687)*y(8737));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(8680);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
