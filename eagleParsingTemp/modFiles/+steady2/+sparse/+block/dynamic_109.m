function [y, T, residual, g1] = dynamic_109(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3216)*y(3264))-(y(3217)*y(3265)+y(3218)*y(3266)+y(3219)*y(3267)+y(3220)*y(3268));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3216);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
