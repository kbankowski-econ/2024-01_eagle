function [y, T, residual, g1] = dynamic_171(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(7275)*y(7323))-(y(7276)*y(7324)+y(7277)*y(7325)+y(7278)*y(7326)+y(7279)*y(7327));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(7275);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
