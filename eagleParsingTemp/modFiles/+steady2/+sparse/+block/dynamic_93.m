function [y, T, residual, g1] = dynamic_93(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2677)*y(2623))-(y(3984)*params(519)*y(4010)*y(2581)/params(142)+y(3695)*params(445)*y(3721)*y(2580)/params(142)+y(3406)*params(367)*y(3432)*y(2579)/params(142)+y(3117)*params(292)*y(3143)*y(2578)/params(142)+y(2249)*params(67)*y(2275)*y(2576)/params(142)+y(2828)*params(217)*y(2854)*y(2577)/params(142));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2623);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
