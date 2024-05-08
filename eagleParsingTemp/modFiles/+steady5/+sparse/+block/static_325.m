function [y, T, residual, g1] = static_325(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4130))-(y(4151)*log(y(5622)-params(644)*y(5622))-1/(1+params(691))*y(4054)^(1+params(691))+params(625)*y(4130));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(625);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
