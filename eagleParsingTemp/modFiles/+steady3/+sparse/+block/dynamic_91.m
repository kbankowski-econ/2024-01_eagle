function [y, T, residual, g1] = dynamic_91(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3670)*y(3611))-(y(4125)*params(463)*y(4161)*y(3564)/params(327)+y(3820)*T(802)+y(3209)*params(260)*y(3245)*y(3562)/params(327)+y(2904)*T(801)+y(2294)*params(59)*y(2330)*y(3559)/params(327)+y(2599)*params(126)*y(2635)*y(3560)/params(327));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3611);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
