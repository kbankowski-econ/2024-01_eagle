function [y, T, residual, g1] = dynamic_177(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(6831)*y(6879))-(y(6832)*y(6880)+y(6833)*y(6881)+y(6834)*y(6882)+y(6835)*y(6883));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(6831);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
