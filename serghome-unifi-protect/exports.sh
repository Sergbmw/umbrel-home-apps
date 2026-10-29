# Resolve the host address selected for the default route; fail closed if absent.
PROTECT_BIND_IP="$(ip -4 route get 192.0.2.1 2>/dev/null | awk '{for (i=1; i<=NF; i++) if ($i == "src") {print $(i+1); exit}}')"
if [ -z "$PROTECT_BIND_IP" ]; then
  echo "Cannot determine Protect LAN bind address" >&2
  return 1
fi
export PROTECT_BIND_IP
