function [y, T, residual, g1] = dynamic_99(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4149)*y(4094))-(y(3723)*params(451)*y(3749)*y(4052)/params(526)+y(3432)*params(372)*y(3458)*y(4051)/params(526)+y(3141)*params(296)*y(3167)*y(4050)/params(526)+y(2850)*params(220)*y(2876)*y(4049)/params(526)+y(2268)*params(68)*y(2294)*y(4047)/params(526)+y(2559)*params(144)*y(2585)*y(4048)/params(526));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4094);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
