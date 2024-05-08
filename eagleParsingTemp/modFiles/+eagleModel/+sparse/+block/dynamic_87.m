function [y, T, residual, g1] = dynamic_87(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(927)*y(7918))-(y(4363)*(-params(70))-params(165)*y(4758)-params(260)*y(5153)-params(355)*y(5548)-params(450)*y(5943)-params(545)*y(6338)-params(640)*y(6733)-params(735)*y(7128)-params(833)*y(7523));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=params(927);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
