function [y, T, residual, g1] = static_369(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(4580)=params(171)*T(646)^params(176);
  residual(1)=(y(891))-((1-params(171))*(y(924)/y(923))^(-params(176))+y(891)*T(4580));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(4580);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
