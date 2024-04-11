function [y, T, residual, g1] = dynamic_31(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(log(y(4061)))-((1-params(375))*log(x(95))+params(375)*log(y(1379))+x(110));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(4061);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
