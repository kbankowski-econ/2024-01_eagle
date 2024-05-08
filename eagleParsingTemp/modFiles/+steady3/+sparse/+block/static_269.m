function [y, T, residual, g1] = static_269(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(3357)=params(303)*T(1500)^params(308);
  residual(1)=(y(1691))-((1-params(303))*(y(1724)/y(1723))^(-params(308))+y(1691)*T(3357));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(3357);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
