function [y, T, residual, g1] = static_200(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1351)=params(64)*T(665)^params(69);
  residual(1)=(y(251))-((1-params(64))*(y(282)/y(281))^(-params(69))+y(251)*T(1351));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1351);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
