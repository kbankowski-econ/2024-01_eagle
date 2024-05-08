function [y, T, residual, g1] = dynamic_151(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(12309)*y(12361))-(y(12310)*y(12362)+y(12312)*y(12363)+y(12314)*y(12364)+y(12316)*y(12365));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(12309);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
