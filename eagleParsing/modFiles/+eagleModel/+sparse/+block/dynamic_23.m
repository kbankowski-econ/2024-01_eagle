function [y, T, residual, g1] = dynamic_23(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(log(y(1813)))-((1-params(282))*log(x(93))+params(282)*log(y(872))+x(108));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(1813);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
