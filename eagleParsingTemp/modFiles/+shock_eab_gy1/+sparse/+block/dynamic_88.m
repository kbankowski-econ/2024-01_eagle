function [y, T, residual, g1] = dynamic_88(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(927)*y(7968))-(y(4413)*(-params(70))-params(165)*y(4808)-params(260)*y(5203)-params(355)*y(5598)-params(450)*y(5993)-params(545)*y(6388)-params(640)*y(6783)-params(735)*y(7178)-params(833)*y(7573));
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
