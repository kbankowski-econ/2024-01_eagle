function [y, T, residual, g1] = static_288(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(4244)=params(922)*(y(5754)/T(155))^params(927);
  residual(1)=(y(5792))-((1-params(922))*(y(5825)/y(5824))^(-params(927))+y(5792)*T(4244));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(4244);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
