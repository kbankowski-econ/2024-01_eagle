function [y, T, residual, g1] = static_463(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3357))-(y(3377)*log(y(3219)-params(858)*y(3219))-1/(1+params(901))*y(3281)^(1+params(901))+params(841)*y(3357));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(841);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
