function [y, T, residual, g1] = dynamic_105(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(6196)*y(6249))-(y(6197)*y(6250)+y(6199)*y(6251)+y(6201)*y(6252)+y(6203)*y(6253));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(6196);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
