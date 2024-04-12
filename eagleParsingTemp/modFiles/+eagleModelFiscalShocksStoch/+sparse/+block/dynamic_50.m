function [y, T, residual, g1] = dynamic_50(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5029)*y(4963))-(y(4494)*params(533)*y(4554)*y(4920)/params(624)+y(4140)*params(438)*y(4200)*y(4919)/params(624)+y(3786)*params(346)*y(3846)*y(4918)/params(624)+y(3432)*params(254)*y(3492)*y(4917)/params(624)+y(2724)*params(70)*y(2784)*y(4915)/params(624)+y(3078)*params(162)*y(3138)*y(4916)/params(624));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4963);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
