function [y, T, residual, g1] = dynamic_99(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4757)*y(4810))-(y(4758)*y(4811)+y(4760)*y(4812)+y(4762)*y(4813)+y(4764)*y(4814));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4757);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
