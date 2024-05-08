function [y, T, residual, g1] = dynamic_155(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(10276)*y(10329))-(y(10277)*y(10330)+y(10279)*y(10331)+y(10281)*y(10332)+y(10283)*y(10333));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(10276);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
