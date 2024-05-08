function [y, T, residual, g1] = dynamic_47(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(log(y(6475)))-((1-params(726))*log(x(208))+params(726)*log(y(2972))+x(224));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(6475);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
