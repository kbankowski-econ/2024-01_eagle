function [y, T, residual, g1] = static_157(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(489)*y(433))-(y(1804)*params(526)*y(1830)*y(391)/params(144)+y(1513)*params(451)*y(1539)*y(390)/params(144)+y(1222)*params(372)*y(1248)*y(389)/params(144)+y(931)*params(296)*y(957)*y(388)/params(144)+y(57)*params(68)*y(83)*y(386)/params(144)+y(640)*params(220)*y(666)*y(387)/params(144));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(433);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
