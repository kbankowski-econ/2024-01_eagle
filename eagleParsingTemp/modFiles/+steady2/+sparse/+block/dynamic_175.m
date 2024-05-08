function [y, T, residual, g1] = dynamic_175(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(10660)*y(10708))-(y(10661)*y(10709)+y(10662)*y(10710)+y(10663)*y(10711)+y(10664)*y(10712));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(10660);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
