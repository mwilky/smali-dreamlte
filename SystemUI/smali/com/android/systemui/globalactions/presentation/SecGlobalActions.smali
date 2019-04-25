.class public interface abstract Lcom/android/systemui/globalactions/presentation/SecGlobalActions;
.super Ljava/lang/Object;
.source "SecGlobalActions.java"


# virtual methods
.method public abstract addAction(Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;)V
.end method

.method public abstract clearActions(Ljava/lang/String;)V
.end method

.method public abstract confirmAction(Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;)V
.end method

.method public abstract confirmSafeMode(I)V
.end method

.method public abstract dismissDialog(Z)V
.end method

.method public abstract getGlobalActionsView()Lcom/android/systemui/globalactions/presentation/view/ExtendableGlobalActionsView;
.end method

.method public abstract hideDialogOnSecureConfirm()V
.end method

.method public abstract isActionConfirming()Z
.end method

.method public abstract isDeviceProvisioned()Z
.end method

.method public abstract onCancelDialog()V
.end method

.method public abstract onShowDialog()V
.end method

.method public abstract registerContentObserver(Landroid/net/Uri;Ljava/lang/Runnable;)V
.end method

.method public abstract registerSecureConfirmAction(Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;)V
.end method

.method public abstract setDisabled()V
.end method

.method public abstract setKeyguardShowing(Z)V
.end method

.method public abstract setOverrideDefaultActions(Z)V
.end method
