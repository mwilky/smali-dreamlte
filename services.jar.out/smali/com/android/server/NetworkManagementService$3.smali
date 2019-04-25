.class Lcom/android/server/NetworkManagementService$3;
.super Landroid/content/BroadcastReceiver;
.source "NetworkManagementService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkManagementService;


# direct methods
.method constructor <init>(Lcom/android/server/NetworkManagementService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/NetworkManagementService$3;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "com.samsung.android.mobiledoctor.GETMOBILEDATAFILES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.samsung.android.action.ACTION_REQUEST_INTERNET_LOG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "com.samsung.android.mobiledoctor.DELETEMOBILEDATAFILES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/NetworkManagementService$3;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-virtual {v1}, Lcom/android/server/NetworkManagementService;->deleteMobileDataLogFile()V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService$3;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-virtual {v1}, Lcom/android/server/NetworkManagementService;->writeMobileDataDnsFile()V

    :cond_3
    :goto_1
    return-void
.end method
