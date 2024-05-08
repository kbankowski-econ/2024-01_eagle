function [y, T, residual, g1] = dynamic_83(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4354)*y(4407))-(y(4355)*y(4408)+y(4357)*y(4409)+y(4359)*y(4410)+y(4361)*y(4411));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4354);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
