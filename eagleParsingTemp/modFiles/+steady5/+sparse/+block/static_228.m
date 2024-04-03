function [y, T, residual, g1] = static_228(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1191))-(y(1213)*log(y(1063)-y(1063)*params(235))-1/(1+params(274))*y(1129)^(1+params(274))+y(1191)*params(217));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(217);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
