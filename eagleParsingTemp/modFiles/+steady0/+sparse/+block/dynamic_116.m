function [y, T, residual, g1] = dynamic_116(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(7023)*y(7076))-(y(7024)*y(7077)+y(7026)*y(7078)+y(7028)*y(7079)+y(7030)*y(7080));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(7023);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
