function [y, T, residual, g1] = dynamic_182(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(12506)*y(12559))-(y(12507)*y(12560)+y(12509)*y(12561)+y(12511)*y(12562)+y(12513)*y(12563));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(12506);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
