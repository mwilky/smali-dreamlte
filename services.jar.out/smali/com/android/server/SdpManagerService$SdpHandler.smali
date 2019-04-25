.class Lcom/android/server/SdpManagerService$SdpHandler;
.super Landroid/os/Handler;
.source "SdpManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SdpHandler"
.end annotation


# static fields
.field private static final HANDLER_TAG:Ljava/lang/String; = "SdpManagerService.Handler"


# instance fields
.field final synthetic this$0:Lcom/android/server/SdpManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/SdpManagerService;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string v0, "SdpHandler"

    invoke-static {p1, v0}, Lcom/android/server/SdpManagerService;->access$4600(Lcom/android/server/SdpManagerService;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    const-string v1, "SdpHandler"

    invoke-static {v0, v1}, Lcom/android/server/SdpManagerService;->access$4600(Lcom/android/server/SdpManagerService;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v1, v0}, Lcom/android/server/SdpManagerService;->access$6500(Lcom/android/server/SdpManagerService;I)V

    goto/16 :goto_2

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_6

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, p0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-virtual {v3, v1}, Lcom/android/server/SdpManagerService;->clearLegacyResetStatus(I)V

    const-class v3, Landroid/app/ActivityManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManagerInternal;

    if-eqz v3, :cond_0

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "com.android.settings/.password.ChooseLockGeneric$InternalActivity"

    const/16 v5, 0x1482

    invoke-virtual {v3, v4, v2, v5}, Landroid/app/ActivityManagerInternal;->removeTaskByCmpName(Ljava/lang/String;II)V

    :cond_0
    goto/16 :goto_2

    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v3, "credential"

    invoke-static {}, Lcom/android/server/SdpManagerService;->access$2600()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "type"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v5, "userId"

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v5, "requestedQuality"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iget-object v5, p0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-virtual {v5, v3, v4, v2, v1}, Lcom/android/server/SdpManagerService;->doSyntheticPasswordFullMigration(Ljava/lang/String;III)Lcom/android/internal/widget/VerifyCredentialResponse;

    goto/16 :goto_2

    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v1, v0}, Lcom/android/server/SdpManagerService;->access$6400(Lcom/android/server/SdpManagerService;I)V

    goto/16 :goto_2

    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_6

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v2, v1}, Lcom/android/server/SdpManagerService;->access$6300(Lcom/android/server/SdpManagerService;I)V

    goto/16 :goto_2

    :pswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v1, v0}, Lcom/android/server/SdpManagerService;->access$6200(Lcom/android/server/SdpManagerService;I)V

    goto/16 :goto_2

    :pswitch_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v1, v0}, Lcom/android/server/SdpManagerService;->access$6100(Lcom/android/server/SdpManagerService;I)V

    goto/16 :goto_2

    :pswitch_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v1, v0}, Lcom/android/server/SdpManagerService;->access$6000(Lcom/android/server/SdpManagerService;I)V

    goto/16 :goto_2

    :pswitch_9
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string/jumbo v2, "userId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v2, "pkgName"

    invoke-static {}, Lcom/android/server/SdpManagerService;->access$2600()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v3, v2, v1}, Lcom/android/server/SdpManagerService;->access$5900(Lcom/android/server/SdpManagerService;Ljava/lang/String;I)V

    goto/16 :goto_2

    :pswitch_a
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v2, p0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/SdpManagerService;->onMasterKeyDerivationRequired(II)V

    goto/16 :goto_2

    :pswitch_b
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/SdpManagerService;->onMasterKeyEvictionRequired(I)V

    goto/16 :goto_2

    :pswitch_c
    iget-object v0, p0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v0}, Lcom/android/server/SdpManagerService;->access$4700(Lcom/android/server/SdpManagerService;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v0, "SdpManagerService.Handler"

    const-string/jumbo v1, "received MSG_SYSTEM_READY. "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v0}, Lcom/android/server/SdpManagerService;->access$4800(Lcom/android/server/SdpManagerService;)V

    iget-object v0, p0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v0}, Lcom/android/server/SdpManagerService;->access$4900(Lcom/android/server/SdpManagerService;)V

    iget-object v0, p0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v0}, Lcom/android/server/SdpManagerService;->access$5000(Lcom/android/server/SdpManagerService;)V

    invoke-static {}, Lcom/android/server/SdpManagerService$SecureUtil;->isSecureStartupCredentialRequired()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Credential required as per secure startup"

    invoke-static {v0}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v0}, Lcom/android/server/SdpManagerService;->access$5100(Lcom/android/server/SdpManagerService;)Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->access$5200(Lcom/android/server/SdpManagerService$SecureFileSystemManager;)Z

    :goto_0
    iget-object v0, p0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v0}, Lcom/android/server/SdpManagerService;->access$5100(Lcom/android/server/SdpManagerService;)Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->access$5300(Lcom/android/server/SdpManagerService$SecureFileSystemManager;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v0}, Lcom/android/server/SdpManagerService;->access$5100(Lcom/android/server/SdpManagerService;)Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->access$5400(Lcom/android/server/SdpManagerService$SecureFileSystemManager;)Z

    :cond_3
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v1}, Lcom/android/server/SdpManagerService;->access$2400(Lcom/android/server/SdpManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_4

    iget-object v3, p0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v3}, Lcom/android/server/SdpManagerService;->access$2400(Lcom/android/server/SdpManagerService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    invoke-virtual {v3}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v5, v4}, Lcom/android/server/SdpManagerService;->access$5500(Lcom/android/server/SdpManagerService;I)V

    iget-object v5, p0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-virtual {v5, v4}, Lcom/android/server/SdpManagerService;->boot(I)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/sec/knox/container/util/KeyManagementUtil;->isSkmmSupported()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "SdpManagerService.Handler"

    const-string v1, "Init SKMM library beforehand for better performance."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v0}, Lcom/android/server/SdpManagerService;->access$5600(Lcom/android/server/SdpManagerService;)Lcom/sec/knox/container/util/KeyManagementUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/knox/container/util/KeyManagementUtil;->initSkmmLibrary()Z

    :cond_5
    iget-object v0, p0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v0, v2}, Lcom/android/server/SdpManagerService;->access$5700(Lcom/android/server/SdpManagerService;I)V

    iget-object v0, p0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/SdpManagerService;->access$5802(Lcom/android/server/SdpManagerService;Z)Z

    nop

    :cond_6
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
