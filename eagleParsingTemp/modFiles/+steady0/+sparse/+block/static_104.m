function [y, T, residual, g1] = static_104(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(109)*y(166))-(y(1053)*y(1077)*y(76)*params(314)/params(56)+y(800)*y(824)*y(75)*params(251)/params(56)+y(294)*y(318)*y(73)*params(120)/params(56)+y(547)*y(571)*y(74)*params(184)/params(56));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(109);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
