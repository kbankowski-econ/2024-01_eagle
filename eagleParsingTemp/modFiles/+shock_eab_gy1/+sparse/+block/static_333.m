function [y, T, residual, g1] = static_333(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3969))-(y(3991)*log(y(5380)-y(5380)*params(804))-1/(1+params(852))*y(3893)^(1+params(852))+y(3969)*params(785));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(785);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
