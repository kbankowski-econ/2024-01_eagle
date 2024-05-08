function [y, T, residual, g1] = dynamic_94(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(9053)*y(9106))-(y(9054)*y(9107)+y(9056)*y(9108)+y(9058)*y(9109)+y(9060)*y(9110));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(9053);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
