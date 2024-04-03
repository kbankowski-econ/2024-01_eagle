function [y, T, residual, g1] = static_229(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(837))-(y(858)*log(y(717)-y(717)*params(190))-1/(1+params(226))*y(775)^(1+params(226))+y(837)*params(175));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(175);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
