function [y, T, residual, g1] = static_172(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1275)=params(129)*(y(525)/T(933))^params(134);
  residual(1)=(y(555))-((1-params(129))*(y(586)/y(585))^(-params(134))+y(555)*T(1275));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1275);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
