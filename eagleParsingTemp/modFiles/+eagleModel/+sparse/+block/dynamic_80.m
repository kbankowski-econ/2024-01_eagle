function [y, T, residual, g1] = dynamic_80(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(6781)*y(6834))-(y(6782)*y(6835)+y(6784)*y(6836)+y(6786)*y(6837)+y(6788)*y(6838));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(6781);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
