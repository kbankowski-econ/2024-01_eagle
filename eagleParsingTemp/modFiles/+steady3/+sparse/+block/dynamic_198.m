function [y, T, residual, g1] = dynamic_198(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(15196)*y(15249))-(y(15197)*y(15250)+y(15199)*y(15251)+y(15201)*y(15252)+y(15203)*y(15253));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(15196);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
