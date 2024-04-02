function [y, T, residual, g1] = static_224(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(886))-(y(908)*log(y(757)-y(757)*params(165))-1/(1+params(205))*y(824)^(1+params(205))+y(886)*params(147));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(147);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
