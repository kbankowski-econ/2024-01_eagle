function [y, T, residual, g1] = dynamic_56(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2280)*y(2339))-(y(3900)*y(3936)*y(2237)*params(540)/params(58)+y(3614)*y(3650)*y(2236)*params(461)/params(58)+y(3328)*y(3364)*y(2235)*params(378)/params(58)+y(3042)*y(3078)*y(2234)*params(298)/params(58)+y(2470)*y(2506)*y(2232)*params(138)/params(58)+y(2756)*y(2792)*y(2233)*params(218)/params(58));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2280);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
