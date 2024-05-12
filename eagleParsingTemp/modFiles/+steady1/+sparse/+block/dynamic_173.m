function [y, T, residual, g1] = dynamic_173(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(14598)*y(14651))-(y(14599)*y(14652)+y(14601)*y(14653)+y(14603)*y(14654)+y(14605)*y(14655));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(14598);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
