.class Lcom/android/server/am/MARsTrigger$5;
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

    iput-object p1, p0, Lcom/android/server/am/MARsTrigger$5;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.server.am.MARS_TRIGGER_SBIKE_MODE_POLICY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x6

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, "PACKAGE_NAME"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/server/am/MARsTrigger$5;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v4, v4, Lcom/android/server/am/MARsTrigger;->mHandlerManager:Lcom/android/server/am/MARsHandler;

    iget-object v5, p0, Lcom/android/server/am/MARsTrigger$5;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v5, v0}, Lcom/android/server/am/MARsTrigger;->access$600(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/MARsTrigger$5;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v6, v6, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getUserId()I

    move-result v6

    invoke-virtual {v4, v3, v2, v5, v6}, Lcom/android/server/am/MARsHandler;->sendRunPolicySepcificPkgMsgToMainHandler(Ljava/util/ArrayList;ILjava/lang/String;I)V

    :cond_0
    goto :goto_0

    :cond_1
    const-string v1, "com.android.server.am.MARS_CANCEL_SBIKE_MODE_POLICY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v3, "PACKAGE_NAME"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/android/server/am/MARsTrigger$5;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v4, v4, Lcom/android/server/am/MARsTrigger;->mHandlerManager:Lcom/android/server/am/MARsHandler;

    iget-object v5, p0, Lcom/android/server/am/MARsTrigger$5;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v5, v5, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-virtual {v4, v3, v2, v5}, Lcom/android/server/am/MARsHandler;->sendCancelPolicyMsgToMainHandler(Ljava/util/ArrayList;II)V

    :cond_2
    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/server/am/MARsTrigger$5;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v3, v3, Lcom/android/server/am/MARsTrigger;->mHandlerManager:Lcom/android/server/am/MARsHandler;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/am/MARsTrigger$5;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v5, v5, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-virtual {v3, v4, v2, v5}, Lcom/android/server/am/MARsHandler;->sendCancelPolicyMsgToMainHandler(Ljava/util/ArrayList;II)V

    :cond_4
    :goto_0
    return-void
.end method
