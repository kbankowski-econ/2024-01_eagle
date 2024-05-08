function [y, T, residual, g1] = dynamic_191(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(7704)*y(7752))-(y(7705)*y(7753)+y(7706)*y(7754)+y(7707)*y(7755)+y(7708)*y(7756));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(7704);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
