.class Lcom/android/server/enterprise/log/LogManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "LogManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/log/LogManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/log/LogManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/log/LogManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/log/LogManagerService$1;->this$0:Lcom/android/server/enterprise/log/LogManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/log/LogManagerService$1;->this$0:Lcom/android/server/enterprise/log/LogManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/log/LogManagerService;->disableLogging(I)I

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/enterprise/log/LogManagerService$1;->this$0:Lcom/android/server/enterprise/log/LogManagerService;

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/LogManagerService;->access$000(Lcom/android/server/enterprise/log/LogManagerService;I)Lcom/android/server/enterprise/log/Logger;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/enterprise/log/Logger;->flush()V

    :cond_1
    :goto_0
    return-void
.end method
