function [y, T, residual, g1] = static_306(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(3949)=params(765)*T(331)^params(770);
  residual(1)=(y(4567))-((1-params(765))*(y(4600)/y(4599))^(-params(770))+y(4567)*T(3949));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(3949);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
