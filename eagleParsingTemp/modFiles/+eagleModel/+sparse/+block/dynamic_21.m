function [y, T, residual, g1] = dynamic_21(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(log(y(6493)))-((1-params(355))*log(x(98))+params(355)*log(y(1682))+x(113));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(6493);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
