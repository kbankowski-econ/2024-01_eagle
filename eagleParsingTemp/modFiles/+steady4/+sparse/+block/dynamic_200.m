function [y, T] = dynamic_200(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(13616)=y(13534);
  y(13447)=((params(864)+T(3613)-1)*y(13616)-params(864)*x(303)*y(13612))/(y(13612)*(1-x(303)));
end
