.class Lcom/android/server/am/MARsTrigger$14;
.super Landroid/content/BroadcastReceiver;
.source "MARsTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MARsTrigger;


# direct methods
.method constructor <init>(Lcom/android/server/am/MARsTrigger;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/MARsTrigger$14;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "reason"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    const-string v2, "MARsTrigger"

    const-string v3, "disable ultra power saving mode"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/am/MARsTrigger$14;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v2, v2, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/MARsTrigger$14;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-virtual {v2}, Lcom/android/server/am/MARsTrigger;->unregisterEmStateReceiver()V

    iget-object v2, p0, Lcom/android/server/am/MARsTrigger$14;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v2, v2, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsPolicyManager;->init(Z)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method
