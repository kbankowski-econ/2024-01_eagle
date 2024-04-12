function [y, T, residual, g1] = dynamic_53(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3260)*y(3193))-(y(4844)*params(624)*y(4904)*y(3150)/params(162)+y(4490)*params(533)*y(4550)*y(3149)/params(162)+y(4136)*params(438)*y(4196)*y(3148)/params(162)+y(3782)*params(346)*y(3842)*y(3147)/params(162)+y(2719)*params(70)*y(2779)*y(3145)/params(162)+y(3428)*params(254)*y(3488)*y(3146)/params(162));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3193);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
