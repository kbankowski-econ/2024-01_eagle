function [y, T, residual, g1] = dynamic_55(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(log(y(4369)))-((1-params(472))*log(x(179))+params(472)*log(y(2128))+x(194));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(4369);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
