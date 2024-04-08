function [y, T, residual, g1] = static_188(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1536)=params(460)*T(1098)^params(465);
  residual(1)=(y(2157))-((1-params(460))*(y(2190)/y(2189))^(-params(465))+y(2157)*T(1536));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1536);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
