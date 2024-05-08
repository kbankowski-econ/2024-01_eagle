function [y, T, residual, g1] = dynamic_182(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(10494)*y(10542))-(y(10495)*y(10543)+y(10496)*y(10544)+y(10497)*y(10545)+y(10498)*y(10546));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(10494);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
