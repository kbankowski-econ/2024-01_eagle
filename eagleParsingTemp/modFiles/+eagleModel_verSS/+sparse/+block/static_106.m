function [y, T, residual, g1] = static_106(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(672)*y(615))-(y(1055)*params(314)*y(1079)*y(582)/params(184)+y(802)*params(251)*y(826)*y(581)/params(184)+y(42)*params(56)*y(66)*y(579)/params(184)+y(295)*params(120)*y(319)*y(580)/params(184));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(615);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
