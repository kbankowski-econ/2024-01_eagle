function [y, T, residual, g1] = dynamic_169(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(8893)*y(8945))-(y(8894)*y(8946)+y(8896)*y(8947)+y(8898)*y(8948)+y(8900)*y(8949));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(8893);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
