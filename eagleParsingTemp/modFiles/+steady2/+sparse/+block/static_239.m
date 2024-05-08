function [y, T, residual, g1] = static_239(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3876)*y(3924))-(y(3877)*y(3925)+y(3878)*y(3926)+y(3879)*y(3927)+y(3880)*y(3928));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3876);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
