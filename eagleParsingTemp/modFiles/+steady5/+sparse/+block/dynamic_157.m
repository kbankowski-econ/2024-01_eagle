function [y, T, residual, g1] = dynamic_157(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(10357)*y(10409))-(y(10358)*y(10410)+y(10360)*y(10411)+y(10362)*y(10412)+y(10364)*y(10413));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(10357);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
