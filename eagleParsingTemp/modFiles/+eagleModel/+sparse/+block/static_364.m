function [y, T, residual, g1] = static_364(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(4268)=params(759)*T(1682)^params(764);
  residual(1)=(y(3693))-((1-params(759))*(y(3726)/y(3725))^(-params(764))+y(3693)*T(4268));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(4268);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
