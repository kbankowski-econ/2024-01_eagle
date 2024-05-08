function [y, T, residual, g1] = dynamic_60(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2544)*y(2597))-(y(2545)*y(2598)+y(2547)*y(2599)+y(2549)*y(2600)+y(2551)*y(2601));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2544);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
