function [y, T, residual, g1] = static_269(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(2265)=params(73)*T(201)^params(78);
  residual(1)=(y(328))-((1-params(73))*(y(361)/y(360))^(-params(78))+y(328)*T(2265));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(2265);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
