function [y, T, residual, g1] = dynamic_195(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(14421)*y(14474))-(y(14422)*y(14475)+y(14424)*y(14476)+y(14426)*y(14477)+y(14428)*y(14478));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(14421);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
