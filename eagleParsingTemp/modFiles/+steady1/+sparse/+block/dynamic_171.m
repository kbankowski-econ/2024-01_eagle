function [y, T, residual, g1] = dynamic_171(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(15674)*y(15727))-(y(15675)*y(15728)+y(15677)*y(15729)+y(15679)*y(15730)+y(15681)*y(15731));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(15674);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
