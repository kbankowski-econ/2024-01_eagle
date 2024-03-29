function [y, T, residual, g1] = dynamic_54(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1652)*y(1581))-(y(2068)*params(335)*y(2104)*y(1547)/params(162)+y(1221)*params(77)*y(1257)*y(1545)/params(162)+y(1786)*params(250)*y(1822)*y(1546)/params(162));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1581);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
