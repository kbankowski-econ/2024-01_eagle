function [y, T, residual, g1] = static_351(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4652))-(y(4674)*log(y(4508)-y(4508)*params(910))-1/(1+params(958))*y(4576)^(1+params(958))+y(4652)*params(891));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(891);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
