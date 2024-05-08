function [y, T] = dynamic_95(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(2917)=y(2856)*y(3630)*y(2892)/(y(2961)*y(3009));
  T(2375)=y(2961)*y(3009)/(y(2994)*y(2932)+y(2961)*y(3009));
  T(2376)=y(2994)*y(2932)/(y(2994)*y(2932)+y(2961)*y(3009));
  y(2904)=T(2375)*y(2916)+T(2376)*y(2910);
  y(2903)=y(2915)*T(2375)+y(2909)*T(2376);
end
