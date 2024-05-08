function [y, T, residual, g1] = dynamic_142(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(6630)*y(6683))-(y(6631)*y(6684)+y(6633)*y(6685)+y(6635)*y(6686)+y(6637)*y(6687));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(6630);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
