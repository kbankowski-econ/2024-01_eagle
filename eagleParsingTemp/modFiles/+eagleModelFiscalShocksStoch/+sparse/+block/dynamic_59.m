function [y, T, residual, g1] = dynamic_59(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2839)*y(2906))-(y(4843)*y(4903)*y(2796)*params(624)/params(70)+y(4489)*y(4549)*y(2795)*params(533)/params(70)+y(4135)*y(4195)*y(2794)*params(438)/params(70)+y(3781)*y(3841)*y(2793)*params(346)/params(70)+y(3073)*y(3133)*y(2791)*params(162)/params(70)+y(3427)*y(3487)*y(2792)*params(254)/params(70));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2839);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
