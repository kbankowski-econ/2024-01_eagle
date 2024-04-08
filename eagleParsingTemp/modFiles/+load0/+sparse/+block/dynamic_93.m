function [y, T, residual, g1] = dynamic_93(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4019)*y(4072))-(y(4020)*y(4073)+y(4022)*y(4074)+y(4024)*y(4075)+y(4026)*y(4076));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4019);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
