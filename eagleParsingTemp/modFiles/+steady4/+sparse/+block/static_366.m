function [y, T, residual, g1] = static_366(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(5752)=params(996)*(y(6891)/T(1966))^params(1001);
  residual(1)=(y(6929))-((1-params(996))*(y(6962)/y(6961))^(-params(1001))+y(6929)*T(5752));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(5752);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
