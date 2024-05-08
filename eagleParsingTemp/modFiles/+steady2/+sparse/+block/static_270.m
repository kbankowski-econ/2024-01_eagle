function [y, T, residual, g1] = static_270(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(3743)=params(213)*T(840)^params(218);
  residual(1)=(y(696))-((1-params(213))*(y(728)/y(727))^(-params(218))+y(696)*T(3743));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(3743);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
