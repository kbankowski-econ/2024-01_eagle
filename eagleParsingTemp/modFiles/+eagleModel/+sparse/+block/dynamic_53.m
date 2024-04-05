function [y, T, residual, g1] = dynamic_53(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3769)*y(3710))-(y(3905)*params(540)*y(3941)*y(3667)/params(461)+y(3332)*params(378)*y(3368)*y(3666)/params(461)+y(3046)*params(298)*y(3082)*y(3665)/params(461)+y(2760)*params(218)*y(2796)*y(3664)/params(461)+y(2188)*params(58)*y(2224)*y(3662)/params(461)+y(2474)*params(138)*y(2510)*y(3663)/params(461));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3710);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
