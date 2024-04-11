function [y, T, residual, g1] = static_178(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1481)=params(627)*(y(2396)/T(316))^params(632);
  residual(1)=(y(2432))-((1-params(627))*(y(2464)/y(2463))^(-params(632))+y(2432)*T(1481));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1481);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
