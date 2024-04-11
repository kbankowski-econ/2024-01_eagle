function [y, T, residual, g1] = dynamic_48(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3579)*y(3512))-(y(4810)*params(624)*y(4870)*y(3469)/params(254)+y(4456)*params(533)*y(4516)*y(3468)/params(254)+y(4102)*params(438)*y(4162)*y(3467)/params(254)+y(3748)*params(346)*y(3808)*y(3466)/params(254)+y(2685)*params(70)*y(2745)*y(3464)/params(254)+y(3039)*params(162)*y(3099)*y(3465)/params(254));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3512);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
