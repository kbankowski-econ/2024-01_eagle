function [y, T, residual, g1] = dynamic_89(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4636)*y(4684))-(y(4637)*y(4685)+y(4638)*y(4686)+y(4639)*y(4687)+y(4640)*y(4688));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4636);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
