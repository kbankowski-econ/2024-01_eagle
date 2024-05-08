function [y, T, residual, g1] = dynamic_107(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4256)*y(4309))-(y(4257)*y(4310)+y(4259)*y(4311)+y(4261)*y(4312)+y(4263)*y(4313));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4256);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
