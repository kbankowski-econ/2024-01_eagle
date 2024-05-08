function [y, T, residual, g1] = static_285(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(3933)=params(922)*(y(5755)/T(127))^params(927);
  residual(1)=(y(5793))-((1-params(922))*(y(5826)/y(5825))^(-params(927))+y(5793)*T(3933));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(3933);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
