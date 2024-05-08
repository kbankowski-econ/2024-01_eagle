function [y, T, residual, g1] = dynamic_47(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3599)*y(3652))-(y(3600)*y(3653)+y(3602)*y(3654)+y(3604)*y(3655)+y(3606)*y(3656));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3599);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
