function [y, T, residual, g1] = static_93(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1013)=params(60)*T(55)^params(65);
  residual(1)=(y(199))-((1-params(60))*(y(230)/y(229))^(-params(65))+y(199)*T(1013));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1013);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
