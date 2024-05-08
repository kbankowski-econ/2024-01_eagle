function [y, T, residual, g1] = static_125(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1407))-(y(1428)*log(y(1469)-params(335)*y(1469))-1/(1+params(385))*y(1334)^(1+params(385))+params(319)*y(1407));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(319);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
