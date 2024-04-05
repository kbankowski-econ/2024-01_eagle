function [y, T, residual, g1] = dynamic_68(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2879)*y(2922))-(y(2880)*y(2923)+y(2882)*y(2924));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2879);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
