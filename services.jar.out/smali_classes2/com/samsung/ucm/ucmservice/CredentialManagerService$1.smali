.class Lcom/samsung/ucm/ucmservice/CredentialManagerService$1;
.super Landroid/os/Handler;
.source "CredentialManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/ucm/ucmservice/CredentialManagerService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;


# direct methods
.method constructor <init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$1;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    const-string v0, "UcmService"

    const-string v1, "MSG_REFRESH_APPLET_INFO is called..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$1;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->access$000(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$1;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-static {v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->access$100(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V

    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$1;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-static {v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->access$200(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V

    monitor-exit v0

    goto/16 :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "packageName"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "status"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "errorCode"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$1;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-static {v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->access$500(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v5

    const-string v6, "UcmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MSG_PACKAGE_LICENSE_UPDATE packageName-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",status-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", errorCode-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_0

    const-string/jumbo v6, "success"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-nez v4, :cond_0

    const-string v6, "event"

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz v5, :cond_2

    :try_start_1
    invoke-interface {v5, v7, v2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->notifyLicenseStatus(ILjava/lang/String;)Z

    move-result v6

    const-string v7, "UcmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  notifyLicenseStatus Activate status- "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    const-string v7, "UcmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    goto :goto_1

    :cond_0
    const/16 v6, 0x12d

    if-ne v4, v6, :cond_1

    const-string v1, "UcmService"

    const-string/jumbo v6, "skip network error case"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    const-string v6, "event"

    const/4 v7, 0x2

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz v5, :cond_2

    :try_start_2
    invoke-interface {v5, v7, v2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->notifyLicenseStatus(ILjava/lang/String;)Z

    move-result v6

    const-string v7, "UcmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  notifyLicenseStatus expire status- "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v6

    const-string v7, "UcmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$1;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-static {v6, v1, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->access$300(Lcom/samsung/ucm/ucmservice/CredentialManagerService;ILandroid/os/Bundle;)V

    goto :goto_2

    :pswitch_2
    goto :goto_2

    :pswitch_3
    goto :goto_2

    :pswitch_4
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$1;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->access$300(Lcom/samsung/ucm/ucmservice/CredentialManagerService;ILandroid/os/Bundle;)V

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$1;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->access$400(Lcom/samsung/ucm/ucmservice/CredentialManagerService;I)V

    :cond_3
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
