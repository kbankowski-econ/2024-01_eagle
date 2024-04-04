function [y, T, residual, g1] = dynamic_88(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3048)*y(2989))-(y(4099)*T(878)+y(3798)*params(385)*y(3834)*y(2945)/params(187)+y(3497)*T(887)+y(3196)*params(252)*y(3232)*y(2943)/params(187)+y(2292)*params(57)*y(2328)*y(2941)/params(187)+y(2593)*params(122)*y(2629)*y(2942)/params(187));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2989);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
