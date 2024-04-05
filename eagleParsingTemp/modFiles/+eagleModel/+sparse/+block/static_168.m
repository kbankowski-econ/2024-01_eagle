function [y, T, residual, g1] = static_168(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1641)*y(1582))-(y(1777)*params(540)*y(1813)*y(1539)/params(461)+y(1204)*params(378)*y(1240)*y(1538)/params(461)+y(918)*params(298)*y(954)*y(1537)/params(461)+y(632)*params(218)*y(668)*y(1536)/params(461)+y(60)*params(58)*y(96)*y(1534)/params(461)+y(346)*params(138)*y(382)*y(1535)/params(461));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1582);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
