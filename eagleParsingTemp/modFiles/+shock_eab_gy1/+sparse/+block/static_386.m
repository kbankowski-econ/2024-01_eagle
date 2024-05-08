function [y, T, residual, g1] = static_386(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(5204)=params(865)*T(2370)^params(870);
  residual(1)=(y(4376))-((1-params(865))*(y(4409)/y(4408))^(-params(870))+y(4376)*T(5204));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(5204);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
