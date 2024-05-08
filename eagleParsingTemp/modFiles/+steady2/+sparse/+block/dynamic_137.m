function [y, T, residual, g1] = dynamic_137(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(8451)*y(8499))-(y(8452)*y(8500)+y(8453)*y(8501)+y(8454)*y(8502)+y(8455)*y(8503));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(8451);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
