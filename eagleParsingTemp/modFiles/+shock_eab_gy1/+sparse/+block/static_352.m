function [y, T, residual, g1] = static_352(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3083))-(y(3105)*log(y(5372)-y(5372)*params(610))-1/(1+params(658))*y(3007)^(1+params(658))+y(3083)*params(591));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(591);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
