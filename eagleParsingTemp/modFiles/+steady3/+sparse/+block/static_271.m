function [y, T, residual, g1] = static_271(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(3807)=params(303)*(y(1752)/T(313))^params(308);
  residual(1)=(y(1790))-((1-params(303))*(y(1823)/y(1822))^(-params(308))+y(1790)*T(3807));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(3807);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
