function [y, T, residual, g1] = dynamic_171(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(10831)*y(10884))-(y(10832)*y(10885)+y(10834)*y(10886)+y(10836)*y(10887)+y(10838)*y(10888));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(10831);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
