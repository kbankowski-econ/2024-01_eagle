function [y, T, residual, g1] = dynamic_65(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4862)*y(4915))-(y(4863)*y(4916)+y(4865)*y(4917)+y(4867)*y(4918)+y(4869)*y(4919));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4862);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
