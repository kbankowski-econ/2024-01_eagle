function [y, T, residual, g1] = static_304(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(3469)=params(649)*T(1429)^params(654);
  residual(1)=(y(2890))-((1-params(649))*(y(2923)/y(2922))^(-params(654))+y(2890)*T(3469));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(3469);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
