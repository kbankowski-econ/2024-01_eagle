function [y, T, residual, g1] = static_99(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(373)*y(421))-(y(374)*y(422)+y(375)*y(423)+y(376)*y(424)+y(377)*y(425));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(373);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
