function [y, T, residual, g1] = static_245(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2682))-(y(2703)*log(y(3541)-params(490)*y(3541))-1/(1+params(537))*y(2606)^(1+params(537))+params(471)*y(2682));
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
