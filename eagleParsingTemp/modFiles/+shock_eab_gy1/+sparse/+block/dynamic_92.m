function [y, T, residual, g1] = dynamic_92(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(9902)*y(9955))-(y(9903)*y(9956)+y(9905)*y(9957)+y(9907)*y(9958)+y(9909)*y(9959));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(9902);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
