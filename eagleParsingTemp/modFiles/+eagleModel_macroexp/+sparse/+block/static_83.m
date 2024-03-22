function [y, T, residual, g1] = static_83(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(731)=params(215)*T(318)^params(220);
  residual(1)=(y(613))-((1-params(215))*(y(644)/y(643))^(-params(220))+y(613)*T(731));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(731);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
