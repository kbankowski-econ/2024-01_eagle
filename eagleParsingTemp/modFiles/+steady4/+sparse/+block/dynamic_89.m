function [y, T, residual, g1] = dynamic_89(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2764)*y(2704))-(y(4135)*params(477)*y(4171)*y(2657)/params(130)+y(3829)*params(409)*y(3865)*y(2656)/params(130)+y(3523)*params(337)*y(3559)*y(2655)/params(130)+y(3217)*params(268)*y(3253)*y(2654)/params(130)+y(2298)*params(61)*y(2334)*y(2652)/params(130)+y(2911)*params(199)*y(2947)*y(2653)/params(130));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2704);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
