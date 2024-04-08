function [y, T, residual, g1] = dynamic_52(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3225)*y(3158))-(y(4809)*params(624)*y(4869)*y(3115)/params(162)+y(4455)*params(533)*y(4515)*y(3114)/params(162)+y(4101)*params(438)*y(4161)*y(3113)/params(162)+y(3747)*params(346)*y(3807)*y(3112)/params(162)+y(2684)*params(70)*y(2744)*y(3110)/params(162)+y(3393)*params(254)*y(3453)*y(3111)/params(162));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3158);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
