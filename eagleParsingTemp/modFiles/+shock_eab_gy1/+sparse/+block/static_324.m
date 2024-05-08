function [y, T, residual, g1] = static_324(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(3999)=params(849)*T(2330)^params(854);
  residual(1)=(y(3944))-((1-params(849))*(y(3977)/y(3976))^(-params(854))+y(3944)*T(3999));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(3999);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
