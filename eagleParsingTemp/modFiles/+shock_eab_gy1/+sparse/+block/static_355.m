function [y, T, residual, g1] = static_355(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(6570)*y(6623))-(y(6571)*y(6624)+y(6573)*y(6625)+y(6575)*y(6626)+y(6577)*y(6627));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(6570);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
