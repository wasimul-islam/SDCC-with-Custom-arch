bool newstm8notUsed(const char *what, lineNode *endPl, lineNode *head);
bool newstm8notUsedFrom(const char *what, const char *label, lineNode *head);
bool newstm8canAssign (const char *dst, const char *src, const char *exotic);
int newstm8instructionSize(lineNode *node);

