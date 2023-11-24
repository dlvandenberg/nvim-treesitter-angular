; [state]="myState$ | async"
(attribute
  ((attribute_name) @_name
   (#lua-match? @_name "%[.*%]"))
  (quoted_attribute_value
    (attribute_value) @angular))

; (myEvent)="handle($event)"
(attribute
  ((attribute_name) @_name
   (#lua-match? @_name "%(.*%)"))
  (quoted_attribute_value
    ((attribute_value) @angular)))

; *ngIf="blorgy"
(attribute
  ((attribute_name) @_name
   (#lua-match? @_name "^%*.*"))
  (quoted_attribute_value
    ((attribute_value) @angular)))

; {{ someBinding }}
; ((text) @angular (#match? @angular "\{\{.+\}\}"))

; }
; ((text) @angular (#match? @angular "^\}$"))

; catch-all for any angular syntax block (if / for / switch / defer)
; ((text) @angular (#match? @angular "\@(if|for|switch|defer|case|default)"))

; catch-all for any angular continuation block (else / empty / case / default / placeholder / loading / error) 
; ((text) @angular (#match? @angular "^\}.\@(else|empty|placeholder|loading|error)"))

; ;; if-statement
; ;@if () {}
; ((text) @angular
;   (#lua-match? @angular "%@if%s+%(.+%)%s+%{")
; )
;
; ; } @else if () {
; ((text) @angular
;   (#lua-match? @angular "%}%s+@else%s+if%s+%(.+%)%s+%{")
; )
;
; ; } @else {
; ((text) @angular
;   (#lua-match? @angular "%}%s+@else%s+%{")
; )
;
;
; ;; for-statement
; ; @for () {
; ((text) @angular 
;   (#lua-match? @angular "%@for%s+%(.+%)%s+%{")
; )
;
; ; } @empty {
; ((text) @angular 
;   (#lua-match? @angular "%}%s+%@empty%s+%{")
; )
;
; ;; switch-statement
; ; @switch () {
; ((text) @angular 
;   (#lua-match? @angular "%@switch%s+%(.+%)%s+%{")
; )
;
; ; @case () {
; ((text) @angular 
;   (#lua-match? @angular "%@case%s+%(.+%)%s+%{")
; )
;
; ; @default () {
; ((text) @angular 
;   (#lua-match? @angular "%@default%s+%(.+%)%s+%{")
; )
;
; ;; defer-statement
; ; @defer {
; ((text) @angular 
;   (#lua-match? @angular "%@defer%s+%{")
; )
;
; ; } @placeholder () {
; ((text) @angular
;   (#lua-match? @angular "%}%s+@placeholder%s+%{")
; )
;
; ; } @loading () {
; ((text) @angular
;   (#lua-match? @angular "%}%s+@loading%s+%{")
; )
;
; ; } @error {
; ((text) @angular
;   (#lua-match? @angular "%}%s+@error%s+%{")
; )
