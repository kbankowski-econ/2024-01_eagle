function [y, T, residual, g1] = dynamic_86(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2394)*y(2453))-(y(4104)*y(4140)*y(2351)*params(449)/params(57)+y(3803)*y(3839)*y(2350)*params(385)/params(57)+y(3502)*T(837)+y(3201)*T(836)+y(2599)*y(2635)*y(2346)*params(122)/params(57)+y(2900)*T(835));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2394);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
