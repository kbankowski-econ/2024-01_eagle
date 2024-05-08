function [y, T, residual, g1] = dynamic_78(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3106)*y(3158))-(y(3107)*y(3159)+y(3109)*y(3160)+y(3111)*y(3161)+y(3113)*y(3162));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3106);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
