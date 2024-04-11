function [y, T, residual, g1] = dynamic_92(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2911)*y(2978))-(y(5005)*y(5065)*y(2868)*params(533)/params(69)+y(4636)*T(982)+y(4267)*T(981)+y(3898)*y(3958)*y(2865)*params(300)/params(69)+y(3160)*T(980)+y(3529)*y(3589)*y(2864)*params(223)/params(69));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2911);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
