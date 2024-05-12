function [y, T, residual, g1] = dynamic_200(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(15211)*y(15263))-(y(15212)*y(15264)+y(15214)*y(15265)+y(15216)*y(15266)+y(15218)*y(15267));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(15211);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
