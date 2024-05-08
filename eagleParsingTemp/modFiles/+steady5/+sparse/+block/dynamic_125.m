function [y, T, residual, g1] = dynamic_125(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(7016)*y(7068))-(y(7017)*y(7069)+y(7019)*y(7070)+y(7021)*y(7071)+y(7023)*y(7072));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(7016);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
