function [y, T, residual, g1] = dynamic_58(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3197)*y(3138))-(y(3903)*params(540)*y(3939)*y(3095)/params(298)+y(3617)*params(461)*y(3653)*y(3094)/params(298)+y(3331)*params(378)*y(3367)*y(3093)/params(298)+y(2758)*params(218)*y(2794)*y(3092)/params(298)+y(2186)*params(58)*y(2222)*y(3090)/params(298)+y(2472)*params(138)*y(2508)*y(3091)/params(298));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3138);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
