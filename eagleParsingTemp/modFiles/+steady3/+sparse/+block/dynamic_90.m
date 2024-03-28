function [y, T, residual, g1] = dynamic_90(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2737)*y(2680))-(y(4096)*params(456)*y(4132)*y(2633)/params(124)+y(3793)*params(391)*y(3829)*y(2632)/params(124)+y(3490)*params(322)*y(3526)*y(2631)/params(124)+y(3187)*params(256)*y(3223)*y(2630)/params(124)+y(2277)*params(58)*y(2313)*y(2628)/params(124)+y(2884)*T(657));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2680);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
