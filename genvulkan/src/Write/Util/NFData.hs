{-# OPTIONS_GHC -fno-warn-orphans       #-}
-- | NFData instances to make haskell-src-exts a little bit more strict.
module Write.Util.NFData () where

import           Control.DeepSeq
import           Language.Haskell.Exts.SimpleComments
import           Language.Haskell.Exts.Syntax



instance NFData a => NFData (Decl a)
instance NFData a => NFData (DeclHead a)
instance NFData a => NFData (Type a)
instance NFData a => NFData (ResultSig a)
instance NFData a => NFData (TyVarBind a)
instance NFData a => NFData (Context a)
instance NFData a => NFData (Name a)
instance NFData a => NFData (QName a)
instance NFData a => NFData (InjectivityInfo a)
instance NFData a => NFData (MaybePromotedName a)
instance NFData a => NFData (Kind a)
instance NFData a => NFData (Asst a)
instance NFData a => NFData (ModuleName a)
instance NFData a => NFData (IPName a)
instance NFData a => NFData (TypeEqn a)
instance NFData a => NFData (DataOrNew a)
instance NFData a => NFData (Promoted a)
instance NFData a => NFData (SpecialCon a)
instance NFData a => NFData (QualConDecl a)
instance NFData a => NFData (Splice a)
instance NFData a => NFData (Deriving a)
instance NFData a => NFData (BangType a)
instance NFData a => NFData (ConDecl a)
instance NFData a => NFData (Exp a)
instance NFData a => NFData (GadtDecl a)
instance NFData a => NFData (Unpackedness a)
instance NFData a => NFData (DerivStrategy a)
instance NFData a => NFData (FieldDecl a)
instance NFData a => NFData (Literal a)
instance NFData a => NFData (FunDep a)
instance NFData a => NFData (InstRule a)
instance NFData a => NFData (QOp a)
instance NFData a => NFData (ClassDecl a)
instance NFData a => NFData (Pat a)
instance NFData a => NFData (InstHead a)
instance NFData a => NFData (Overlap a)
instance NFData a => NFData (Binds a)
instance NFData a => NFData (Sign a)
instance NFData a => NFData (InstDecl a)
instance NFData a => NFData (GuardedRhs a)
instance NFData a => NFData (PatField a)
instance NFData a => NFData (IPBind a)
instance NFData a => NFData (Assoc a)
instance NFData a => NFData (Alt a)
instance NFData a => NFData (RPat a)
instance NFData a => NFData (Op a)
instance NFData a => NFData (FieldUpdate a)
instance NFData a => NFData (XName a)
instance NFData a => NFData (Rhs a)
instance NFData a => NFData (RPatOp a)
instance NFData a => NFData (Stmt a)
instance NFData a => NFData (Match a)
instance NFData a => NFData (QualStmt a)
instance NFData a => NFData (PXAttr a)
instance NFData a => NFData (PatternSynDirection a)
instance NFData a => NFData (Bracket a)
instance NFData a => NFData (CallConv a)
instance NFData a => NFData (XAttr a)
instance NFData a => NFData (Safety a)
instance NFData a => NFData (Rule a)
instance NFData a => NFData (Activation a)
instance NFData a => NFData (Annotation a)
instance NFData a => NFData (RuleVar a)
instance NFData a => NFData (BooleanFormula a)
instance NFData a => NFData (Role a)
instance NFData a => NFData (ImportSpec a)
instance NFData a => NFData (Namespace a)
instance NFData a => NFData (CName a)
instance NFData a => NFData (ExportSpec a)
instance NFData a => NFData (EWildcard a)
instance NFData a => NFData (Module a)
instance NFData a => NFData (ModuleHead a)
instance NFData a => NFData (WarningText a)
instance NFData a => NFData (ExportSpecList a)
instance NFData a => NFData (ModulePragma a)
instance NFData a => NFData (ImportDecl a)
instance NFData a => NFData (ImportSpecList a)
instance NFData Boxed
instance NFData Tool
instance NFData CodeComment where
  rnf (CodeComment p c s) = p `seq` c `seq` s `seq` ()
