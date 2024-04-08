function [y, T, residual, g1] = dynamic_59(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4994)*y(4928))-(y(4459)*params(533)*y(4519)*y(4885)/params(624)+y(4105)*params(438)*y(4165)*y(4884)/params(624)+y(3751)*params(346)*y(3811)*y(4883)/params(624)+y(3397)*params(254)*y(3457)*y(4882)/params(624)+y(2689)*params(70)*y(2749)*y(4880)/params(624)+y(3043)*params(162)*y(3103)*y(4881)/params(624));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4928);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
