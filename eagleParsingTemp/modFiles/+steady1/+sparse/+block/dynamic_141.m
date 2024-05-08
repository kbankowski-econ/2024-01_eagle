function [y, T, residual, g1] = dynamic_141(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(8261)*y(8314))-(y(8262)*y(8315)+y(8264)*y(8316)+y(8266)*y(8317)+y(8268)*y(8318));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(8261);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
