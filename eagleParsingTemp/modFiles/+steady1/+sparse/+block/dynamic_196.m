function [y, T, residual, g1] = dynamic_196(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(15136)*y(15189))-(y(15137)*y(15190)+y(15139)*y(15191)+y(15141)*y(15192)+y(15143)*y(15193));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(15136);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
