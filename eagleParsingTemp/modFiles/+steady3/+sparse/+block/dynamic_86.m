function [y, T, residual, g1] = dynamic_86(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2391)*y(2450))-(y(4121)*y(4157)*y(2344)*params(463)/params(59)+y(3816)*y(3852)*y(2343)*params(397)/params(59)+y(3511)*y(3547)*y(2342)*params(327)/params(59)+y(3206)*T(796)+y(2596)*y(2632)*y(2339)*params(126)/params(59)+y(2901)*y(2937)*y(2340)*params(193)/params(59));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2391);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
