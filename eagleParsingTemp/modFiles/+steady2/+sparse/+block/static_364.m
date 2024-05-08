function [y, T, residual, g1] = static_364(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(5186)=params(697)*T(685)^params(702);
  residual(1)=(y(2470))-((1-params(697))*(y(2502)/y(2501))^(-params(702))+y(2470)*T(5186));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(5186);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
