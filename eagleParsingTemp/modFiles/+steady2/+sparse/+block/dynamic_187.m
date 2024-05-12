function [y, T, residual, g1] = dynamic_187(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(13001)*y(13049))-(y(13002)*y(13050)+y(13003)*y(13051)+y(13004)*y(13052)+y(13005)*y(13053));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(13001);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
