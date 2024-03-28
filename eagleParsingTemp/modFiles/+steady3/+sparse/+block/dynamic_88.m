function [y, T, residual, g1] = dynamic_88(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3040)*y(2983))-(y(4097)*params(456)*y(4133)*y(2936)/params(190)+y(3794)*T(438)+y(3491)*params(322)*y(3527)*y(2934)/params(190)+y(3188)*params(256)*y(3224)*y(2933)/params(190)+y(2278)*params(58)*y(2314)*y(2931)/params(190)+y(2581)*params(124)*y(2617)*y(2932)/params(190));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2983);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
