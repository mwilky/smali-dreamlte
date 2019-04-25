.class Lcom/android/server/enterprise/restriction/RestrictionPolicy$4;
.super Landroid/content/BroadcastReceiver;
.source "RestrictionPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/restriction/RestrictionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$4;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const-string v0, "RestrictionPolicy"

    const-string v1, "FOTAReceiver: onReceive"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sec.fota.intent.MDM_REGISTER_RESULT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    const-string/jumbo v3, "result"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    const/4 v1, 0x1

    const-string v3, "RestrictionPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FOTAReceiver: action:sec.fota.intent.MDM_REGISTER_RESULT failure("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$4;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-static {v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$300(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)Z

    goto :goto_0

    :cond_0
    const-string v3, "RestrictionPolicy"

    const-string v4, "action:sec.fota.intent.MDM_REGISTER_RESULT success"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$4;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-static {v3, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$400(Lcom/android/server/enterprise/restriction/RestrictionPolicy;I)V

    goto/16 :goto_3

    :cond_1
    const-string v1, "com.xdm.intent.UPDATE_RESULT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$4;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getAllowedFOTAInfo(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "RestrictionPolicy"

    const-string v2, "action:com.xdm.intent.UPDATE_RESULT ignore"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string/jumbo v1, "result"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x5

    add-int v3, v2, v1

    const-string v4, "RestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "action:com.xdm.intent.UPDATE_RESULT = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x8

    if-gt v3, v4, :cond_4

    if-ge v3, v2, :cond_3

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$4;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-static {v2, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$400(Lcom/android/server/enterprise/restriction/RestrictionPolicy;I)V

    goto :goto_3

    :cond_4
    :goto_1
    return-void

    :cond_5
    const-string/jumbo v1, "sec.fota.intent.MDM_UNREGISTER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "RestrictionPolicy"

    const-string v3, "FOTAReceiver: action:sec.fota.intent.MDM_UNREGISTER"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$4;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-static {v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$300(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)Z

    const-string v1, "com.wssyncmldm"

    const-string v3, "com.samsung.utagent"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    nop

    :goto_2
    array-length v3, v1

    if-ge v2, v3, :cond_6

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "sec.fota.intent.MDM_REGISTER"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$4;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-static {v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$000(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    return-void
.end method
