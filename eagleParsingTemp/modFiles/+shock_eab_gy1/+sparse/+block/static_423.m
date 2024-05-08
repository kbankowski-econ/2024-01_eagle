function [y, T, residual, g1] = static_423(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2928))-(y(2950)*log(y(6932)-y(6932)*params(523))-1/(1+params(571))*y(2852)^(1+params(571))+y(2928)*params(504));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(504);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
