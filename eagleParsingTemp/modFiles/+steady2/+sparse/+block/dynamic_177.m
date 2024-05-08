function [y, T, residual, g1] = dynamic_177(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(8634)*y(8682))-(y(8635)*y(8683)+y(8636)*y(8684)+y(8637)*y(8685)+y(8638)*y(8686));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(8634);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
