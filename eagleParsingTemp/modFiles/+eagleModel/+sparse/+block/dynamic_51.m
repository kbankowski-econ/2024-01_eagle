function [y, T, residual, g1] = dynamic_51(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2625)*y(2566))-(y(3901)*params(540)*y(3937)*y(2523)/params(138)+y(3615)*params(461)*y(3651)*y(2522)/params(138)+y(3329)*params(378)*y(3365)*y(2521)/params(138)+y(3043)*params(298)*y(3079)*y(2520)/params(138)+y(2184)*params(58)*y(2220)*y(2518)/params(138)+y(2757)*params(218)*y(2793)*y(2519)/params(138));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2566);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
