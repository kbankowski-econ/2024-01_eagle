function [y, T, residual, g1] = static_344(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(3734)=params(655)*T(1273)^params(660);
  residual(1)=(y(3058))-((1-params(655))*(y(3091)/y(3090))^(-params(660))+y(3058)*T(3734));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(3734);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
