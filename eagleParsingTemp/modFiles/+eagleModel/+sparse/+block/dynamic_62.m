function [y, T, residual, g1] = dynamic_62(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(log(y(10417)))-((1-params(1041))*log(x(295))+params(1041)*log(y(4880))+x(311));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(10417);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
