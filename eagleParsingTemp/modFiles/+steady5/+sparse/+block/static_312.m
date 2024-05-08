function [y, T, residual, g1] = static_312(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4592))-(y(4614)*log(y(5625)-y(5625)*params(721))-1/(1+params(768))*y(4516)^(1+params(768))+y(4592)*params(702));
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
