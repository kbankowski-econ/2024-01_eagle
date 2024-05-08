function [y, T, residual, g1] = dynamic_81(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(8513)*y(8566))-(y(8514)*y(8567)+y(8516)*y(8568)+y(8518)*y(8569)+y(8520)*y(8570));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(8513);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
