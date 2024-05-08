function [y, T, residual, g1] = static_389(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4066))-(y(4087)*log(y(7250)-params(566)*y(7250))-1/(1+params(614))*y(3990)^(1+params(614))+params(547)*y(4066));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(547);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
