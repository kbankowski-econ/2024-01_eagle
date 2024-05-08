function [y, T, residual, g1] = dynamic_178(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(11424)*y(11472))-(y(11425)*y(11473)+y(11426)*y(11474)+y(11427)*y(11475)+y(11428)*y(11476));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(11424);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
