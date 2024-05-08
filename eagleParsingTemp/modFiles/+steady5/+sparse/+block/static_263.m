function [y, T, residual, g1] = static_263(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4486)*y(4538))-(y(4487)*y(4539)+y(4489)*y(4540)+y(4491)*y(4541)+y(4493)*y(4542));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4486);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
