function [y, T, residual, g1] = static_163(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(199)*y(252))-(y(200)*y(253)+y(202)*y(254)+y(204)*y(255)+y(206)*y(256));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(199);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
