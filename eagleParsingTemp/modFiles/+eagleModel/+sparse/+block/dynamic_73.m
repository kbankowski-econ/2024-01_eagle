function [y, T, residual, g1] = dynamic_73(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5983)*y(6036))-(y(5984)*y(6037)+y(5986)*y(6038)+y(5988)*y(6039)+y(5990)*y(6040));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(5983);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
