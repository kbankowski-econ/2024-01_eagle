function [y, T, residual, g1] = dynamic_93(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3277)*y(3221))-(y(4012)*params(526)*y(4038)*y(3179)/params(296)+y(3721)*params(451)*y(3747)*y(3178)/params(296)+y(3430)*params(372)*y(3456)*y(3177)/params(296)+y(2847)*params(220)*y(2873)*y(3176)/params(296)+y(2265)*params(68)*y(2291)*y(3174)/params(296)+y(2556)*params(144)*y(2582)*y(3175)/params(296));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3221);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
