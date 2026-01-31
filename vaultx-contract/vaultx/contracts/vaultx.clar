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

;; Contract owner
(define-constant CONTRACT-OWNER tx-sender)

;; Minimum deposit amount (1 STX = 1,000,000 microSTX)
(define-constant MIN-DEPOSIT u1000000)

;; ============================================
;; Data Variables
;; ============================================

;; Total STX locked in all vaults
(define-data-var total-locked uint u0)

;; Total number of vaults created
(define-data-var vault-count uint u0)


;; Emergency pause state
(define-data-var paused bool false)

;; ============================================
;; Data Maps
;; ============================================

;; User vault data
(define-map vaults
  principal
  {
    balance: uint,
    lock-until: uint,
    created-at: uint,
    last-deposit: uint,
    total-deposited: uint,
    total-withdrawn: uint
  }
)

;; ============================================
;; Private Functions
;; ============================================

;; Check if caller is contract owner
(define-private (is-owner)
  (is-eq tx-sender CONTRACT-OWNER)
)