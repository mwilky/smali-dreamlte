.class public Lcom/android/server/policy/globalactions/presentation/PolicyGlobalActionsManager;
.super Ljava/lang/Object;
.source "PolicyGlobalActionsManager.java"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/SecGlobalActionsManager;


# instance fields
.field private final mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/globalactions/presentation/PolicyGlobalActionsManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    return-void
.end method


# virtual methods
.method public isFOTAAvailableForGlobalActions()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onGlobalActionsHidden()V
    .locals 0

    return-void
.end method

.method public onGlobalActionsShown()V
    .locals 0

    return-void
.end method

.method public reboot(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/globalactions/presentation/PolicyGlobalActionsManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v1, v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->rebootSafeMode(Z)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/globalactions/presentation/PolicyGlobalActionsManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v1, v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->reboot(Z)V

    :goto_0
    return-void
.end method

.method public shutdown()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/globalactions/presentation/PolicyGlobalActionsManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->shutdown(Z)V

    return-void
.end method
