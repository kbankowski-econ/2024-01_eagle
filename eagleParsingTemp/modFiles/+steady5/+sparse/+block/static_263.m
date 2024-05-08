function [y, T, residual, g1] = static_263(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(741))-(y(763)*log(y(3520)-y(3520)*params(105))-1/(1+params(152))*y(665)^(1+params(152))+y(741)*params(86));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(86);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
