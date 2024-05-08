function [y, T, residual, g1] = dynamic_116(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(7073)*y(7126))-(y(7074)*y(7127)+y(7076)*y(7128)+y(7078)*y(7129)+y(7080)*y(7130));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(7073);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
