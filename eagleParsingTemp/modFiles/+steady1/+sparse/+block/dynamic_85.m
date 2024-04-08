function [y, T, residual, g1] = dynamic_85(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3319)*y(3252))-(y(4978)*T(1037)+y(4609)*params(457)*y(4669)*y(3208)/params(146)+y(4240)*params(377)*y(4300)*y(3207)/params(146)+y(3871)*T(1036)+y(2763)*params(69)*y(2823)*y(3204)/params(146)+y(3502)*T(281));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3252);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
