function [y, T, residual, g1] = dynamic_93(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3349)*y(3290))-(y(4100)*params(449)*y(4136)*y(3247)/params(252)+y(3799)*params(385)*y(3835)*y(3246)/params(252)+y(3498)*params(317)*y(3534)*y(3245)/params(252)+y(2895)*params(187)*y(2931)*y(3244)/params(252)+y(2293)*params(57)*y(2329)*y(3242)/params(252)+y(2594)*params(122)*y(2630)*y(3243)/params(252));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3290);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
