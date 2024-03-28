function [y, T, residual, g1] = dynamic_88(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3040)*y(2983))-(y(4097)*T(768)+y(3794)*T(767)+y(3491)*T(766)+y(3188)*T(765)+y(2278)*T(764)+y(2581)*params(124)*y(2617)*y(2932)/params(190));
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
