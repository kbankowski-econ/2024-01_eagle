function [y, T, residual, g1] = static_238(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(2018)=params(303)*T(374)^params(308);
  residual(1)=(y(1393))-((1-params(303))*(y(1426)/y(1425))^(-params(308))+y(1393)*T(2018));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(2018);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
