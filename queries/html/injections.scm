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
; @if (condition) {
((text) @angular (#lua-match? @angular "^%@if%s+%(.+%)%s+%{$"))
; @for (item of items) {
((text) @angular (#lua-match? @angular "^%@for%s+%(.+%)%s+%{$"))
; @switch (condition) {
((text) @angular (#lua-match? @angular "^%@switch%s+%(.+%)%s+%{$"))
; @case (value) {
((text) @angular (#lua-match? @angular "^%@case%s+%(.+%)%s+%{$"))
; @default {
((text) @angular (#lua-match? @angular "^%@default%s+%{$"))
; @defer {
((text) @angular (#lua-match? @angular "^%@defer%s+%{$"))
; @defer (conditions) {
((text) @angular (#lua-match? @angular "^%@defer%s+%(.+%)%{$"))

; Angular continuation blocks
; } @else {
((text) @angular (#lua-match? @angular "^%}%s+%@else%s+%{$"))
; } @else if (condition) {
((text) @angular (#lua-match? @angular "^%}%s+%@else%s+if%s+%(.+%)%s+%{$"))
; } @empty {
((text) @angular (#lua-match? @angular "^%}%s+%@empty%s+%{$"))
; } @placeholder {
((text) @angular (#lua-match? @angular "^%}%s+%@placeholder%s+%{$"))
; @placeholder (minumum) {
((text) @angular (#lua-match? @angular "^%}%s+%@placeholder%s+%(.+%)%{$"))
; } @loading {
((text) @angular (#lua-match? @angular "^%}%s+%@loading%s+%{$"))
; } @loading (conditions) {
((text) @angular (#lua-match? @angular "^%}%s+%@loading%s+%(.+%)%s+%{$"))
; } @error {
((text) @angular (#lua-match? @angular "^%}%s+%@error%s+%{$"))

