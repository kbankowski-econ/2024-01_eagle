function [y, T, residual, g1] = static_197(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(2528)=params(298)*(y(915)/T(532))^params(303);
  residual(1)=(y(953))-((1-params(298))*(y(985)/y(984))^(-params(303))+y(953)*T(2528));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(2528);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
