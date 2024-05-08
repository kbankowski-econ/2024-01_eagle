function [y, T] = dynamic_64(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(1819)=y(1624);
  y(1818)=y(1623);
  T(1328)=y(1805)*y(1752)*params(69)/y(1760)+y(2093)*params(146)*y(2040)/y(2048)+y(2381)*params(223)*y(2328)/y(2336)+y(2669)*params(303)*y(2616)/y(2624)+y(2953)*params(379)*y(2903);
  y(1811)=y(1805)*y(1752)*params(69)/y(1760)/T(1328);
  y(2926)=y(1588)*T(497)-y(2737)*y(1723)*y(2775)+y(1876)*T(498)-y(2738)*y(2011)*y(2776)+y(2164)*T(499)-y(2739)*y(2299)*y(2777)+y(2452)*y(2874)*params(303)/params(379)-y(2740)*y(2587)*y(2778);
end
