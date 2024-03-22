function [y, T, residual, g1] = dynamic_30(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1520)*y(1463))-(y(1629)*params(287)*y(1647)*y(1435)/params(212)+y(974)*params(57)*y(992)*y(1433)/params(212)+y(1192)*params(133)*y(1210)*y(1434)/params(212));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1463);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
