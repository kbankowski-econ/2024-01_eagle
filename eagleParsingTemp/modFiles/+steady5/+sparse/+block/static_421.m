function [y, T, residual, g1] = static_421(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3551))-(y(3573)*log(y(7245)-y(7245)*params(490))-1/(1+params(537))*y(3475)^(1+params(537))+y(3551)*params(471));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(471);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
