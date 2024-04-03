function [y, T, residual, g1] = static_158(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1071)*y(1015))-(y(1806)*params(526)*y(1832)*y(973)/params(296)+y(1515)*params(451)*y(1541)*y(972)/params(296)+y(1224)*params(372)*y(1250)*y(971)/params(296)+y(641)*params(220)*y(667)*y(970)/params(296)+y(59)*params(68)*y(85)*y(968)/params(296)+y(350)*params(144)*y(376)*y(969)/params(296));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1015);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
