function [y, T, residual, g1] = dynamic_83(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3343)*y(3286))-(y(4098)*T(532)+y(3795)*T(531)+y(3492)*T(530)+y(2885)*params(190)*y(2921)*y(3236)/params(256)+y(2279)*params(58)*y(2315)*y(3234)/params(256)+y(2582)*params(124)*y(2618)*y(3235)/params(256));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3286);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
