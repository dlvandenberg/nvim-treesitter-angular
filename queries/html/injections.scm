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
((text) @angular (#lua-match? @angular "%{%{.+%}%}"))

; }
((text) @angular (#lua-match? @angular "^%}$"))

; Angular control flow statements
((text) @angular (#lua-match? @angular "^%@if"))
((text) @angular (#lua-match? @angular "^%@for"))
((text) @angular (#lua-match? @angular "^%@switch"))
((text) @angular (#lua-match? @angular "^%@defer"))
((text) @angular (#lua-match? @angular "^%@case"))
((text) @angular (#lua-match? @angular "^%@default"))

; Angular continuation blocks
((text) @angular (#lua-match? @angular "^%}%s+%@else"))
((text) @angular (#lua-match? @angular "^%}%s+%@else"))
((text) @angular (#lua-match? @angular "^%}%s+%@empty"))
((text) @angular (#lua-match? @angular "^%}%s+%@placeholder"))
((text) @angular (#lua-match? @angular "^%}%s+%@loading"))
((text) @angular (#lua-match? @angular "^%}%s+%@error"))

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
