function [y, T, residual, g1] = dynamic_81(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(log(y(14079)))-((1-params(1356))*log(x(379))+params(1356)*log(y(6876))+x(394));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(14079);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
