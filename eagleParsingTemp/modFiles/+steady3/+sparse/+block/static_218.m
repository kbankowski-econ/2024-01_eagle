function [y, T, residual, g1] = static_218(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1298)=params(196)*T(159)^params(201);
  residual(1)=(y(860))-((1-params(196))*(y(891)/y(890))^(-params(201))+y(860)*T(1298));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1298);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
