function [y, T, residual, g1] = dynamic_179(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(7753)*y(7806))-(y(7754)*y(7807)+y(7756)*y(7808)+y(7758)*y(7809)+y(7760)*y(7810));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(7753);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
