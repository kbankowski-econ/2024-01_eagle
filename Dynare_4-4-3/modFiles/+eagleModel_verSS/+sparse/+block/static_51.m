function [y, T, residual, g1] = static_51(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(796))-((1-params(236))*x(80)+y(796)*params(236)+x(93));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(236);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
