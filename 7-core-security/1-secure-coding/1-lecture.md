# Principles of Secure Coding

Program defensively

privilege - running with rights other than those obtained by logging in; or running as superuser/root/admin

Protection domain - all objects to which the process has access and the type of access the process has

Robust programming vs Secure Programming

Secure program conforms to a security policy, and implicitly requires robustness
Robust program does what it is supposed to, handles unexpected events reasonably and does not crash. It may terminate gracefully.

Security is cumulative. Composing non-secure modules produces non-secure software.
