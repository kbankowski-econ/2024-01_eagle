function [y, T, residual, g1] = static_278(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4508)*y(4556))-(y(4509)*y(4557)+y(4510)*y(4558)+y(4511)*y(4559)+y(4512)*y(4560));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4508);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
