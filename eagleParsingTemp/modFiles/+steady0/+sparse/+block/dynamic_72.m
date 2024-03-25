function [y, T, residual, g1] = dynamic_72(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2259)*y(2202))-(y(2390)*params(314)*y(2414)*y(2169)/params(251)+y(1883)*params(184)*y(1907)*y(2168)/params(251)+y(1377)*params(56)*y(1401)*y(2166)/params(251)+y(1630)*params(120)*y(1654)*y(2167)/params(251));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2202);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
