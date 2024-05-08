function [y, T, residual, g1] = dynamic_155(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(10780)*y(10833))-(y(10781)*y(10834)+y(10783)*y(10835)+y(10785)*y(10836)+y(10787)*y(10837));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(10780);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
