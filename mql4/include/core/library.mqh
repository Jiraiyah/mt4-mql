/**
 * Globale init()-Funktion f�r Libraries.
 *
 * @return int - Fehlerstatus
 */
int init() {
   return(NO_ERROR);
}


/**
 * Globale start()-Funktion f�r Libraries.
 *
 *
 * @return int - Fehlerstatus
 */
int start() {
   catch("start()", ERR_WRONG_JUMP);
}


/**
 * Globale deinit()-Funktion f�r Libraries.
 *
 *
 * @return int - Fehlerstatus
 */
int deinit() {
   __WHEREAMI__ = FUNC_DEINIT;
   return(NO_ERROR);
}


/**
 * Ob das aktuelle ausgef�hrte Programm ein Expert Adviser ist.
 *
 * @return bool
 */
bool IsExpert() {
   if (__TYPE__ == T_LIBRARY)
      return(_false(catch("IsExpert()   function must not be used before library initialization", ERR_RUNTIME_ERROR)));
   return(__TYPE__ & T_EXPERT);
}


/**
 * Ob das aktuelle ausgef�hrte Programm ein Indikator ist.
 *
 * @return bool
 */
bool IsIndicator() {
   if (__TYPE__ == T_LIBRARY)
      return(_false(catch("IsIndicator()   function must not be used before library initialization", ERR_RUNTIME_ERROR)));
   return(__TYPE__ & T_INDICATOR);
}


/**
 * Ob das aktuelle ausgef�hrte Programm ein Script ist.
 *
 * @return bool
 */
bool IsScript() {
   if (__TYPE__ == T_LIBRARY)
      return(_false(catch("IsScript()   function must not be used before library initialization", ERR_RUNTIME_ERROR)));
   return(__TYPE__ & T_SCRIPT);
}


/**
 * Ob das aktuelle ausgef�hrte Programm eine Library ist.
 *
 * @return bool
 */
bool IsLibrary() {
   return(true);
}
