function [y, T, residual, g1] = static_247(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(2535)=params(96)*T(209)^params(101);
  residual(1)=(y(275))-((1-params(96))*(y(307)/y(306))^(-params(101))+y(275)*T(2535));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(2535);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
