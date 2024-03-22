function [y, T, residual, g1] = static_104(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(851)=params(317)*(y(1181)/T(557))^params(322);
  residual(1)=(y(1209))-((1-params(317))*(y(1239)/y(1238))^(-params(322))+y(1209)*T(851));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(851);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
