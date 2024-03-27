function [y, T, residual, g1] = dynamic_112(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3833)*y(3779))-(y(3988)*params(519)*y(4014)*y(3737)/params(445)+y(3409)*params(367)*y(3435)*y(3736)/params(445)+y(3120)*params(292)*y(3146)*y(3735)/params(445)+y(2831)*params(217)*y(2857)*y(3734)/params(445)+y(2253)*params(67)*y(2279)*y(3732)/params(445)+y(2542)*params(142)*y(2568)*y(3733)/params(445));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3779);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
