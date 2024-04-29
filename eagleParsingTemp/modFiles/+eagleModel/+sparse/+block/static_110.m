function [y, T, residual, g1] = static_110(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(571)=params(254)*T(273)^params(259);
  residual(1)=(y(710))-((1-params(254))*(y(743)/y(742))^(-params(259))+y(710)*T(571));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(571);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
