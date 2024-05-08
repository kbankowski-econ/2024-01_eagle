function [y, T, residual, g1] = static_176(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(537)*y(585))-(y(538)*y(586)+y(539)*y(587)+y(540)*y(588)+y(541)*y(589));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(537);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
