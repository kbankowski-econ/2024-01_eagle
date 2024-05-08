function [y, T, residual, g1] = static_344(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(6772)=params(1623)*(y(5937)/T(3303))^params(1628);
  residual(1)=(y(5975))-((1-params(1623))*(y(6007)/y(6006))^(-params(1628))+y(5975)*T(6772));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(6772);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
