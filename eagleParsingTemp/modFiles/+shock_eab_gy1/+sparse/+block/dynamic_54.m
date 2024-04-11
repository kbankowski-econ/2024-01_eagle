function [y, T, residual, g1] = dynamic_54(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4287)*y(4220))-(y(4812)*params(624)*y(4872)*y(4177)/params(438)+y(4458)*params(533)*y(4518)*y(4176)/params(438)+y(3749)*params(346)*y(3809)*y(4175)/params(438)+y(3395)*params(254)*y(3455)*y(4174)/params(438)+y(2687)*params(70)*y(2747)*y(4172)/params(438)+y(3041)*params(162)*y(3101)*y(4173)/params(438));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4220);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
