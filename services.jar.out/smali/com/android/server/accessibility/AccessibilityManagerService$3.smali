.class Lcom/android/server/accessibility/AccessibilityManagerService$3;
.super Landroid/app/IUserSwitchObserver$Stub;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;->registerKnoxModeChangeObserver(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$3;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Landroid/app/IUserSwitchObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundProfileSwitch(I)V
    .locals 3

    const-string v0, "AccessibilityManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onKnoxModeChange personaId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "AccessibilityManagerService"

    const-string v1, "Current application is running in KNOX mode."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$3;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$502(Lcom/android/server/accessibility/AccessibilityManagerService;Z)Z

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$3;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->checkUniversalSwitchState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$3;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    const-string v2, "KNOX_MODE_ENABLED_BROADCAST"

    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendKnoxModeEnabledBroadCast(Ljava/lang/String;)V

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$3;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$502(Lcom/android/server/accessibility/AccessibilityManagerService;Z)Z

    :goto_0
    return-void
.end method

.method public onLockedBootComplete(I)V
    .locals 0

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onUserSwitching(ILandroid/os/IRemoteCallback;)V
    .locals 0

    return-void
.end method
