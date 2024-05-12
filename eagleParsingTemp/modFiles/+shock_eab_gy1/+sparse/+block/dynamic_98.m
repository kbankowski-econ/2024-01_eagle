function [y, T, residual, g1] = dynamic_98(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(13618)*y(13671))-(y(13619)*y(13672)+y(13621)*y(13673)+y(13623)*y(13674)+y(13625)*y(13675));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(13618);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
