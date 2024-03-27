function [y, T, residual, g1] = static_196(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1458)=params(70)*T(774)^params(75);
  residual(1)=(y(230))-((1-params(70))*(y(260)/y(259))^(-params(75))+y(230)*T(1458));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1458);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
