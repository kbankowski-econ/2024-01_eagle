function [y, T, residual, g1] = static_276(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(4931)=params(346)*T(3158)^params(351);
  residual(1)=(y(1201))-((1-params(346))*(y(1233)/y(1232))^(-params(351))+y(1201)*T(4931));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(4931);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
