function [y, T, residual, g1] = dynamic_99(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3622)*y(3560))-(y(4859)*params(673)*y(4899)*y(3518)/params(283)+y(4510)*params(577)*y(4550)*y(3517)/params(283)+y(4161)*params(477)*y(4201)*y(3516)/params(283)+y(3812)*params(380)*y(3852)*y(3515)/params(283)+y(2764)*params(89)*y(2804)*y(3513)/params(283)+y(3113)*params(186)*y(3153)*y(3514)/params(283));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3560);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
