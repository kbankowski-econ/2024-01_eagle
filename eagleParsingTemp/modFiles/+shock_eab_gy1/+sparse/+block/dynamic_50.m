function [y, T, residual, g1] = dynamic_50(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4641)*y(4574))-(y(4813)*params(624)*y(4873)*y(4531)/params(533)+y(4104)*params(438)*y(4164)*y(4530)/params(533)+y(3750)*params(346)*y(3810)*y(4529)/params(533)+y(3396)*params(254)*y(3456)*y(4528)/params(533)+y(2688)*params(70)*y(2748)*y(4526)/params(533)+y(3042)*params(162)*y(3102)*y(4527)/params(533));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4574);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
