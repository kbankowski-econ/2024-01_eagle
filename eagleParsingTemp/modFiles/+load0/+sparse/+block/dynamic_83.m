function [y, T, residual, g1] = dynamic_83(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2883)*y(2950))-(y(4977)*y(5037)*y(2840)*params(533)/params(69)+y(4608)*y(4668)*y(2839)*params(457)/params(69)+y(4239)*T(1154)+y(3870)*T(1153)+y(3132)*T(1152)+y(3501)*y(3561)*y(2836)*params(223)/params(69));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2883);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
