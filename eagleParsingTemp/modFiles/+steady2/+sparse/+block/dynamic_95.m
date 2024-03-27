function [y, T, residual, g1] = dynamic_95(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3255)*y(3201))-(y(3986)*params(519)*y(4012)*y(3159)/params(292)+y(3697)*params(445)*y(3723)*y(3158)/params(292)+y(3408)*params(367)*y(3434)*y(3157)/params(292)+y(2829)*params(217)*y(2855)*y(3156)/params(292)+y(2251)*params(67)*y(2277)*y(3154)/params(292)+y(2540)*params(142)*y(2566)*y(3155)/params(292));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3201);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
