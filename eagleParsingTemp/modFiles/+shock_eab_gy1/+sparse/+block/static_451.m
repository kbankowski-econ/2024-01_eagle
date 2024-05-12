function [y, T, residual, g1] = static_451(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(5815)=params(573)*T(636)^params(578);
  residual(1)=(y(3047))-((1-params(573))*(y(3080)/y(3079))^(-params(578))+y(3047)*T(5815));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(5815);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
