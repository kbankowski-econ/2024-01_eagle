function [y, T, residual, g1] = dynamic_57(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1299)*y(1370))-(y(2067)*y(2103)*y(1265)*params(335)/params(77)+y(1503)*T(111)+y(1785)*y(1821)*y(1264)*params(250)/params(77));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1299);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
