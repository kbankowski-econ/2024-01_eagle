function [y, T, residual, g1] = dynamic_92(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3723)*y(3656))-(y(5014)*T(597)+y(4645)*T(596)+y(4276)*T(595)+y(3907)*params(300)*y(3967)*y(3610)/params(223)+y(2799)*params(69)*y(2859)*y(3608)/params(223)+y(3168)*params(146)*y(3228)*y(3609)/params(223));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3656);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
