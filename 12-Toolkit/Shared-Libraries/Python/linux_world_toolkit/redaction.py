import re
PATTERNS=[re.compile(r'(?i)((?:password|token|secret)\s*[:=]\s*)\S+'),re.compile(r'AKIA[0-9A-Z]{16}')]
def redact(text: str)->str:
 for pattern in PATTERNS:text=pattern.sub(lambda m:(m.group(1) if m.lastindex else '')+'[REDACTED]',text)
 return text
