function [y, T, residual, g1] = dynamic_66(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4453)*y(4506))-(y(4454)*y(4507)+y(4456)*y(4508)+y(4458)*y(4509)+y(4460)*y(4510));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4453);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
