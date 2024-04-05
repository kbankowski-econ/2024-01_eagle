function [y, T, residual, g1] = dynamic_54(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3483)*y(3424))-(y(3904)*params(540)*y(3940)*y(3381)/params(378)+y(3618)*params(461)*y(3654)*y(3380)/params(378)+y(3045)*params(298)*y(3081)*y(3379)/params(378)+y(2759)*params(218)*y(2795)*y(3378)/params(378)+y(2187)*params(58)*y(2223)*y(3376)/params(378)+y(2473)*params(138)*y(2509)*y(3377)/params(378));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3424);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
