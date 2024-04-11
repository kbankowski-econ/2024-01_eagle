function [y, T, residual, g1] = dynamic_98(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4054)*y(4107))-(y(4055)*y(4108)+y(4057)*y(4109)+y(4059)*y(4110)+y(4061)*y(4111));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4054);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
