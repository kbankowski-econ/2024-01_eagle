function [y, T, residual, g1] = dynamic_138(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(7079)*y(7131))-(y(7080)*y(7132)+y(7082)*y(7133)+y(7084)*y(7134)+y(7086)*y(7135));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(7079);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
