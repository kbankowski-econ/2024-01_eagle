function [y, T, residual, g1] = dynamic_82(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(6362)*y(6415))-(y(6363)*y(6416)+y(6365)*y(6417)+y(6367)*y(6418)+y(6369)*y(6419));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(6362);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
