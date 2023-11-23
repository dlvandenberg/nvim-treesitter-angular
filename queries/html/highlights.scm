; (attribute
;   ((attribute_name) @_name
;    (#lua-match? @_name "%[.*%]"))) @tag.attribute
;
; (attribute
;   ((attribute_name) @_name
;    (#lua-match? @_name "%(.*%)"))) @tag.attribute
;
; (attribute
;   ((attribute_name) @_name
;    (#lua-match? @_name "^%*.*"))) @tag.attribute
;
; [
;   "{{"
;   "}}"
;   "("
;   ")"
;   "["
;   "]"
;   "{"
;   "}"
; ] 
; @punctuation.bracket

;; extends
(attribute
  ((attribute_name) @_name
   (#lua-match? @_name "%[.*%]")) @keyword)

(attribute
  ((attribute_name) @_name
   (#lua-match? @_name "%(.*%)")) @keyword)

(attribute
  ((attribute_name) @_name
   (#lua-match? @_name "^%*.*")) @keyword)


[
 "{{"
 "}}"
 "("
 ")"
 "["
 "]"
 "{"
 "}"
 ] @punctuation.bracket

