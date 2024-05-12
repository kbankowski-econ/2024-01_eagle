function [y, T, residual, g1] = static_420(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5339))-(y(5361)*log(y(8148)-y(8148)*params(721))-1/(1+params(768))*y(5263)^(1+params(768))+y(5339)*params(702));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(702);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
