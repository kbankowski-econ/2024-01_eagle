function [y, T, residual, g1] = static_243(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1060)*y(1113))-(y(1061)*y(1114)+y(1063)*y(1115)+y(1065)*y(1116)+y(1067)*y(1117));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1060);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
