function [y, T, residual, g1] = dynamic_60(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2620)*y(2673))-(y(2621)*y(2674)+y(2623)*y(2675)+y(2625)*y(2676)+y(2627)*y(2677));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2620);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
