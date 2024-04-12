function [y, T, residual, g1] = dynamic_57(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3968)*y(3901))-(y(4846)*params(624)*y(4906)*y(3858)/params(346)+y(4492)*params(533)*y(4552)*y(3857)/params(346)+y(4138)*params(438)*y(4198)*y(3856)/params(346)+y(3429)*params(254)*y(3489)*y(3855)/params(346)+y(2721)*params(70)*y(2781)*y(3853)/params(346)+y(3075)*params(162)*y(3135)*y(3854)/params(346));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3901);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
