function [y, T, residual, g1] = dynamic_92(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4057)*y(3990))-(y(4980)*params(533)*y(5040)*y(3947)/params(300)+y(4611)*params(457)*y(4671)*y(3946)/params(300)+y(4242)*params(377)*y(4302)*y(3945)/params(300)+y(3503)*params(223)*y(3563)*y(3944)/params(300)+y(2765)*params(69)*y(2825)*y(3942)/params(300)+y(3134)*params(146)*y(3194)*y(3943)/params(300));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3990);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
