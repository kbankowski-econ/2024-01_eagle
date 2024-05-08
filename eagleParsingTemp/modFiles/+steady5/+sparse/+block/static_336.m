function [y, T, residual, g1] = static_336(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(4537)=params(765)*T(89)^params(770);
  residual(1)=(y(4816))-((1-params(765))*(y(4849)/y(4848))^(-params(770))+y(4816)*T(4537));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(4537);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
