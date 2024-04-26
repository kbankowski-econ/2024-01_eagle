function [y, T, residual, g1] = static_291(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3753))-(y(3775)*log(y(4670)-y(4670)*params(796))-1/(1+params(844))*y(3677)^(1+params(844))+y(3753)*params(777));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(777);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
