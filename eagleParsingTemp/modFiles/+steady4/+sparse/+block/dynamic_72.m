function [y, T, residual, g1] = dynamic_72(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3731)*y(3784))-(y(3732)*y(3785)+y(3734)*y(3786)+y(3736)*y(3787)+y(3738)*y(3788));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3731);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
