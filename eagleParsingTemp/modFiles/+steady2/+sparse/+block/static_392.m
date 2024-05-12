function [y, T, residual, g1] = static_392(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(7723)=params(1543)*T(4744)^params(1548);
  residual(1)=(y(5761))-((1-params(1543))*(y(5793)/y(5792))^(-params(1548))+y(5761)*T(7723));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(7723);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
