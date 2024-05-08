function [y, T, residual, g1] = static_171(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5365))-((1-params(1050))*x(288)+y(5365)*params(1050)+x(302));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(1050);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
