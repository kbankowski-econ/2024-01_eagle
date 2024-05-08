function [y, T, residual, g1] = static_371(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(5202)=params(1063)*(y(5320)/T(1747))^params(1068);
  residual(1)=(y(5358))-((1-params(1063))*(y(5391)/y(5390))^(-params(1068))+y(5358)*T(5202));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(5202);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
