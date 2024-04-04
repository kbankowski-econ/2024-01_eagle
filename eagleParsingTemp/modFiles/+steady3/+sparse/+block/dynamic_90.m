function [y, T, residual, g1] = dynamic_90(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2747)*y(2688))-(y(4098)*params(449)*y(4134)*y(2645)/params(122)+y(3797)*params(385)*y(3833)*y(2644)/params(122)+y(3496)*T(815)+y(3195)*params(252)*y(3231)*y(2642)/params(122)+y(2291)*params(57)*y(2327)*y(2640)/params(122)+y(2894)*params(187)*y(2930)*y(2641)/params(122));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2688);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
