function [y, T, residual, g1] = static_163(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(621)*y(554))-(y(2205)*params(624)*y(2265)*y(511)/params(162)+y(1851)*params(533)*y(1911)*y(510)/params(162)+y(1497)*params(438)*y(1557)*y(509)/params(162)+y(1143)*params(346)*y(1203)*y(508)/params(162)+y(80)*params(70)*y(140)*y(506)/params(162)+y(789)*params(254)*y(849)*y(507)/params(162));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(554);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
