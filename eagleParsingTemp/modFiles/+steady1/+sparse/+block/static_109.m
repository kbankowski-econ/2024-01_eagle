function [y, T, residual, g1] = static_109(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1177)*y(1121))-(y(803)*params(251)*y(827)*y(1088)/params(314)+y(550)*params(184)*y(574)*y(1087)/params(314)+y(44)*params(56)*y(68)*y(1085)/params(314)+y(297)*params(120)*y(321)*y(1086)/params(314));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1121);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
