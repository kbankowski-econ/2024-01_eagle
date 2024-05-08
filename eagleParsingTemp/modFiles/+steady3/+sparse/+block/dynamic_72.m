function [y, T, residual, g1] = dynamic_72(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3725)*y(3778))-(y(3726)*y(3779)+y(3728)*y(3780)+y(3730)*y(3781)+y(3732)*y(3782));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3725);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
