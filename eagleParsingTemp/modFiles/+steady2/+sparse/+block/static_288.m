function [y, T, residual, g1] = static_288(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3978))-(y(3999)*log(y(3840)-y(3840)*params(1085))-1/(1+params(1131))*y(3902)^(1+params(1131))+y(3978)*params(1068));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(1068);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
