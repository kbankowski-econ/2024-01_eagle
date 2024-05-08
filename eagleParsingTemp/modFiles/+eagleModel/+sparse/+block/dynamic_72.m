function [y, T, residual, g1] = dynamic_72(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(6346)*y(6399))-(y(6347)*y(6400)+y(6349)*y(6401)+y(6351)*y(6402)+y(6353)*y(6403));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(6346);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
