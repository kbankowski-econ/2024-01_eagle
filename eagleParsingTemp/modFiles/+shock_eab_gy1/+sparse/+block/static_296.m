function [y, T, residual, g1] = static_296(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(4234)=params(1251)*(y(5989)/T(2661))^params(1256);
  residual(1)=(y(6025))-((1-params(1251))*(y(6057)/y(6056))^(-params(1256))+y(6025)*T(4234));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(4234);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
