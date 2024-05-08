function [y, T, residual, g1] = dynamic_99(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(10515)*y(10568))-(y(10516)*y(10569)+y(10518)*y(10570)+y(10520)*y(10571)+y(10522)*y(10572));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(10515);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
