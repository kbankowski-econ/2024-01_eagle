function [y, T, residual, g1] = dynamic_89(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2695)*y(2639))-(y(4010)*params(526)*y(4036)*y(2597)/params(144)+y(3719)*params(451)*y(3745)*y(2596)/params(144)+y(3428)*params(372)*y(3454)*y(2595)/params(144)+y(3137)*params(296)*y(3163)*y(2594)/params(144)+y(2263)*params(68)*y(2289)*y(2592)/params(144)+y(2846)*params(220)*y(2872)*y(2593)/params(144));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2639);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
