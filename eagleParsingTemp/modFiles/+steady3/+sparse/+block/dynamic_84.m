function [y, T, residual, g1] = dynamic_84(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3975)*y(3916))-(y(4126)*params(463)*y(4162)*y(3869)/params(397)+y(3515)*params(327)*y(3551)*y(3868)/params(397)+y(3210)*params(260)*y(3246)*y(3867)/params(397)+y(2905)*params(193)*y(2941)*y(3866)/params(397)+y(2295)*params(59)*y(2331)*y(3864)/params(397)+y(2600)*params(126)*y(2636)*y(3865)/params(397));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3916);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
