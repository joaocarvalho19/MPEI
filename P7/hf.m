function hashCode = hf(key, k, r, p)

  hashCode = mod(r(k)*key,p);
  