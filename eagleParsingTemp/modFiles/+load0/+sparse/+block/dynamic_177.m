function [y, T, residual, g1] = dynamic_177(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(12731)*y(12784))-(y(12732)*y(12785)+y(12734)*y(12786)+y(12736)*y(12787)+y(12738)*y(12788));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(12731);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
