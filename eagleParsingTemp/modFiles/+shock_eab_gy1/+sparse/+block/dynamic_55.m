function [y, T, residual, g1] = dynamic_55(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4322)*y(4255))-(y(4847)*params(624)*y(4907)*y(4212)/params(438)+y(4493)*params(533)*y(4553)*y(4211)/params(438)+y(3784)*params(346)*y(3844)*y(4210)/params(438)+y(3430)*params(254)*y(3490)*y(4209)/params(438)+y(2722)*params(70)*y(2782)*y(4207)/params(438)+y(3076)*params(162)*y(3136)*y(4208)/params(438));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4255);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
