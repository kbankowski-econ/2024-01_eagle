function [y, T, residual, g1] = dynamic_83(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(8070)*y(8123))-(y(8071)*y(8124)+y(8073)*y(8125)+y(8075)*y(8126)+y(8077)*y(8127));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(8070);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
