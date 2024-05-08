function [y, T, residual, g1] = dynamic_150(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(9392)*y(9440))-(y(9393)*y(9441)+y(9394)*y(9442)+y(9395)*y(9443)+y(9396)*y(9444));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(9392);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
