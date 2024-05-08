function [y, T, residual, g1] = dynamic_170(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(8392)*y(8445))-(y(8393)*y(8446)+y(8395)*y(8447)+y(8397)*y(8448)+y(8399)*y(8449));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(8392);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
