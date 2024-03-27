function [y, T, residual, g1] = dynamic_97(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2334)*y(2388))-(y(3983)*y(4009)*y(2292)*params(519)/params(67)+y(3694)*y(3720)*y(2291)*params(445)/params(67)+y(3405)*y(3431)*y(2290)*params(367)/params(67)+y(3116)*y(3142)*y(2289)*params(292)/params(67)+y(2538)*y(2564)*y(2287)*params(142)/params(67)+y(2827)*y(2853)*y(2288)*params(217)/params(67));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2334);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
