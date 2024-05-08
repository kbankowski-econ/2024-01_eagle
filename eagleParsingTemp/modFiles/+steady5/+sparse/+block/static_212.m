function [y, T, residual, g1] = static_212(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(2383)=params(226)*(y(1066)/T(787))^params(231);
  residual(1)=(y(1104))-((1-params(226))*(y(1137)/y(1136))^(-params(231))+y(1104)*T(2383));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(2383);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
