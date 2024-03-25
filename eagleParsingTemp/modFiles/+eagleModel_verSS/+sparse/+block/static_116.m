function [y, T, residual, g1] = static_116(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(925)*y(868))-(y(1056)*params(314)*y(1080)*y(835)/params(251)+y(549)*params(184)*y(573)*y(834)/params(251)+y(43)*params(56)*y(67)*y(832)/params(251)+y(296)*params(120)*y(320)*y(833)/params(251));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(868);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
