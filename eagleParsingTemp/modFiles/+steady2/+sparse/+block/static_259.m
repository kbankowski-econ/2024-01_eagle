function [y, T, residual, g1] = static_259(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(4232)=params(1240)*(y(4316)/T(365))^params(1245);
  residual(1)=(y(4352))-((1-params(1240))*(y(4383)/y(4382))^(-params(1245))+y(4352)*T(4232));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(4232);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
