;; VaultX - A Simple STX Vault Contract
;; Description: Allows users to deposit and withdraw STX with optional time-lock

;; ============================================
;; Constants
;; ============================================

;; Error codes
(define-constant ERR-NOT-AUTHORIZED (err u100))
(define-constant ERR-INSUFFICIENT-BALANCE (err u101))
(define-constant ERR-INVALID-AMOUNT (err u102))
(define-constant ERR-VAULT-LOCKED (err u103))
(define-constant ERR-NO-VAULT (err u104))
(define-constant ERR-TRANSFER-FAILED (err u105))