function [y, T, residual, g1] = dynamic_87(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3020)*y(2961))-(y(4071)*params(449)*y(4107)*y(2918)/params(187)+y(3770)*params(385)*y(3806)*y(2917)/params(187)+y(3469)*params(317)*y(3505)*y(2916)/params(187)+y(3168)*params(252)*y(3204)*y(2915)/params(187)+y(2264)*params(57)*y(2300)*y(2913)/params(187)+y(2565)*params(122)*y(2601)*y(2914)/params(187));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2961);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
