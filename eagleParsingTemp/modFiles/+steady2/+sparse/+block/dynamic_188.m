function [y, T, residual, g1] = dynamic_188(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(9599)*y(9647))-(y(9600)*y(9648)+y(9601)*y(9649)+y(9602)*y(9650)+y(9603)*y(9651));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(9599);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
