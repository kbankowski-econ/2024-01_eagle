function [y, T, residual, g1] = dynamic_181(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(13452)*y(13505))-(y(13453)*y(13506)+y(13455)*y(13507)+y(13457)*y(13508)+y(13459)*y(13509));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(13452);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
