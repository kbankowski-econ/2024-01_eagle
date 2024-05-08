function [y, T, residual, g1] = static_370(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(5126)=params(765)*T(2819)^params(770);
  residual(1)=(y(5065))-((1-params(765))*(y(5098)/y(5097))^(-params(770))+y(5065)*T(5126));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(5126);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
