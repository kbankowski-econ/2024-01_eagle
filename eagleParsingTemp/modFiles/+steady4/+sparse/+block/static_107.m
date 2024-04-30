function [y, T, residual, g1] = static_107(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1019))-(y(1041)*log(y(1073)-y(1073)*params(258))-1/(1+params(308))*y(946)^(1+params(308))+y(1019)*params(242));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(242);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
