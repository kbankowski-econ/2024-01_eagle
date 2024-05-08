function [y, T, residual, g1] = dynamic_99(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(7499)*y(7552))-(y(7500)*y(7553)+y(7502)*y(7554)+y(7504)*y(7555)+y(7506)*y(7556));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(7499);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
