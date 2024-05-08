function [y, T, residual, g1] = static_139(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(473)*y(526))-(y(474)*y(527)+y(476)*y(528)+y(478)*y(529)+y(480)*y(530));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(473);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
