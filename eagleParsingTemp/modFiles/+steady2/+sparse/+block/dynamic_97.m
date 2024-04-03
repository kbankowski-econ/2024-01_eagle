function [y, T, residual, g1] = dynamic_97(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2986)*y(2930))-(y(4011)*params(526)*y(4037)*y(2888)/params(220)+y(3720)*params(451)*y(3746)*y(2887)/params(220)+y(3429)*params(372)*y(3455)*y(2886)/params(220)+y(3138)*params(296)*y(3164)*y(2885)/params(220)+y(2264)*params(68)*y(2290)*y(2883)/params(220)+y(2555)*params(144)*y(2581)*y(2884)/params(220));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2930);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
