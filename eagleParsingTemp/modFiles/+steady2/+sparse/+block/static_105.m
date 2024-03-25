function [y, T, residual, g1] = static_105(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(102)*y(156))-(y(1029)*y(1047)*y(70)*params(349)/params(63)+y(782)*y(800)*y(69)*params(279)/params(63)+y(288)*y(306)*y(67)*params(134)/params(63)+y(535)*y(553)*y(68)*params(205)/params(63));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(102);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
