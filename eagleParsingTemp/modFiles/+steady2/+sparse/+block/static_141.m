function [y, T, residual, g1] = static_141(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3180))-((1-params(930))*x(224)+y(3180)*params(930)+x(237));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(930);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
