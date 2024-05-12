function [y, T, residual, g1] = static_321(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(5375)=params(1152)*(y(7965)/T(2765))^params(1157);
  residual(1)=(y(8001))-((1-params(1152))*(y(8033)/y(8032))^(-params(1157))+y(8001)*T(5375));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(5375);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
