function [y, T, residual, g1] = dynamic_195(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(11057)*y(11105))-(y(11058)*y(11106)+y(11059)*y(11107)+y(11060)*y(11108)+y(11061)*y(11109));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(11057);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
