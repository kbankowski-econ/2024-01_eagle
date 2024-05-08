function [y, T, residual, g1] = dynamic_102(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4362)*y(4415))-(y(4363)*y(4416)+y(4365)*y(4417)+y(4367)*y(4418)+y(4369)*y(4419));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4362);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
