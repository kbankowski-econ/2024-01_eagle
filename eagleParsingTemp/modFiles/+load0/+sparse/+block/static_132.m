function [y, T, residual, g1] = static_132(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(33)=log(y(4379));
  residual(1)=(T(33))-((1-params(683))*log(x(230))+T(33)*params(683)+x(244));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(4379)-params(683)*1/y(4379);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
