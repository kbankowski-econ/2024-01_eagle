function [y, T, residual, g1] = static_384(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(5030)=params(611)*T(1639)^params(616);
  residual(1)=(y(4040))-((1-params(611))*(y(4073)/y(4072))^(-params(616))+y(4040)*T(5030));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(5030);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
