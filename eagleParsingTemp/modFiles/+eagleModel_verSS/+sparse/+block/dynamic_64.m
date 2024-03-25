function [y, T, residual, g1] = dynamic_64(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2006)*y(1949))-(y(2389)*params(314)*y(2413)*y(1916)/params(184)+y(2136)*params(251)*y(2160)*y(1915)/params(184)+y(1376)*params(56)*y(1400)*y(1913)/params(184)+y(1629)*params(120)*y(1653)*y(1914)/params(184));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1949);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
