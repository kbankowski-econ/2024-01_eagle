function [y, T, residual, g1] = dynamic_99(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2966)*y(2912))-(y(3985)*params(519)*y(4011)*y(2870)/params(217)+y(3696)*params(445)*y(3722)*y(2869)/params(217)+y(3407)*params(367)*y(3433)*y(2868)/params(217)+y(3118)*params(292)*y(3144)*y(2867)/params(217)+y(2250)*params(67)*y(2276)*y(2865)/params(217)+y(2539)*params(142)*y(2565)*y(2866)/params(217));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2912);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
