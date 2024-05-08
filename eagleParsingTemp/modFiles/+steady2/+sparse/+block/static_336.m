function [y, T, residual, g1] = static_336(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(5961)=params(1326)*(y(4777)/T(856))^params(1331);
  residual(1)=(y(4815))-((1-params(1326))*(y(4847)/y(4846))^(-params(1331))+y(4815)*T(5961));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(5961);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
