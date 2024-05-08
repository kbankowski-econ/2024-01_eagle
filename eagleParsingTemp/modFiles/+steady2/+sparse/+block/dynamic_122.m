function [y, T, residual, g1] = dynamic_122(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3839)*y(3887))-(y(3840)*y(3888)+y(3841)*y(3889)+y(3842)*y(3890)+y(3843)*y(3891));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3839);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
