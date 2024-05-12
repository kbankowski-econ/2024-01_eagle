function [y, T, residual, g1] = dynamic_84(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(log(y(13613)))-((1-params(1409))*log(x(284))+params(1409)*log(y(5324))+x(298));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(13613);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
