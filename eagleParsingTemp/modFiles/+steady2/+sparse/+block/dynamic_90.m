function [y, T, residual, g1] = dynamic_90(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3273)*y(3211))-(y(4858)*params(673)*y(4898)*y(3169)/params(186)+y(4509)*params(577)*y(4549)*y(3168)/params(186)+y(4160)*params(477)*y(4200)*y(3167)/params(186)+y(3811)*params(380)*y(3851)*y(3166)/params(186)+y(2763)*params(89)*y(2803)*y(3164)/params(186)+y(3462)*params(283)*y(3502)*y(3165)/params(186));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3211);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
