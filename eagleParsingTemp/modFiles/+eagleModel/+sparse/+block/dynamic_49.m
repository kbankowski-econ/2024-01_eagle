function [y, T, residual, g1] = dynamic_49(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2911)*y(2852))-(y(3902)*params(540)*y(3938)*y(2809)/params(218)+y(3616)*params(461)*y(3652)*y(2808)/params(218)+y(3330)*params(378)*y(3366)*y(2807)/params(218)+y(3044)*params(298)*y(3080)*y(2806)/params(218)+y(2185)*params(58)*y(2221)*y(2804)/params(218)+y(2471)*params(138)*y(2507)*y(2805)/params(218));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2852);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
