.class Lcom/android/server/fingerprint/AuthenticationClient$2;
.super Landroid/hardware/biometrics/IBiometricPromptReceiver$Stub;
.source "AuthenticationClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/AuthenticationClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/AuthenticationClient;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/AuthenticationClient;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/fingerprint/AuthenticationClient$2;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-direct {p0}, Landroid/hardware/biometrics/IBiometricPromptReceiver$Stub;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onDialogDismissed$0(Lcom/android/server/fingerprint/AuthenticationClient$2;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$2;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient$2;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-virtual {v1}, Lcom/android/server/fingerprint/AuthenticationClient;->getTargetUserId()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/fingerprint/FingerprintUtils;->semIsAODShowState(Landroid/content/Context;IZ)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$2;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient$2;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-virtual {v2}, Lcom/android/server/fingerprint/AuthenticationClient;->getTargetUserId()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/fingerprint/FingerprintUtils;->semIsAODTapToShowEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$2;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient$2;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-virtual {v2}, Lcom/android/server/fingerprint/AuthenticationClient;->getTargetUserId()I

    move-result v2

    invoke-static {v0, v2, v1}, Lcom/android/server/fingerprint/FingerprintUtils;->semIsAODShowState(Landroid/content/Context;IZ)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$2;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-static {v0}, Lcom/android/server/fingerprint/AuthenticationClient;->access$400(Lcom/android/server/fingerprint/AuthenticationClient;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$2;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/AuthenticationClient;->semDozeControl(Z)Z

    move-result v0

    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient$2;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-static {v2, v0}, Lcom/android/server/fingerprint/AuthenticationClient;->access$402(Lcom/android/server/fingerprint/AuthenticationClient;Z)Z

    :cond_1
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finger Icon Trigger : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/fingerprint/AuthenticationClient$2;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-static {v3}, Lcom/android/server/fingerprint/AuthenticationClient;->access$500(Lcom/android/server/fingerprint/AuthenticationClient;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$2;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-static {v0}, Lcom/android/server/fingerprint/AuthenticationClient;->access$500(Lcom/android/server/fingerprint/AuthenticationClient;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$2;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-static {v0, v1}, Lcom/android/server/fingerprint/AuthenticationClient;->access$600(Lcom/android/server/fingerprint/AuthenticationClient;I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$2;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-static {v0}, Lcom/android/server/fingerprint/AuthenticationClient;->access$700(Lcom/android/server/fingerprint/AuthenticationClient;)Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$2;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    new-instance v1, Lcom/android/server/fingerprint/AuthenticationClient$2$1;

    invoke-direct {v1, p0}, Lcom/android/server/fingerprint/AuthenticationClient$2$1;-><init>(Lcom/android/server/fingerprint/AuthenticationClient$2;)V

    invoke-static {v0, v1}, Lcom/android/server/fingerprint/AuthenticationClient;->access$702(Lcom/android/server/fingerprint/AuthenticationClient;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_4
    :goto_0
    return-void
.end method

.method public static synthetic lambda$onDialogDismissed$1(Lcom/android/server/fingerprint/AuthenticationClient$2;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$2;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/AuthenticationClient;->stop(Z)I

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$2;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/fingerprint/AuthenticationClient;->semHandleInternalError(II)V

    return-void
.end method

.method public static synthetic lambda$onDialogDismissed$2(Lcom/android/server/fingerprint/AuthenticationClient$2;I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient$2;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Lcom/android/server/fingerprint/AuthenticationClient;->onError(II)Z

    :cond_0
    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient$2;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mDialogDismissed:Z

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient$2;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/AuthenticationClient;->stop(Z)I

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient$2;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Lcom/android/server/fingerprint/AuthenticationClient;->semHandleInternalError(II)V

    return-void
.end method


# virtual methods
.method public onDialogDismissed(I)V
    .locals 3

    const/16 v0, 0x2710

    if-le p1, v0, :cond_3

    const/16 v0, 0x2711

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x271a

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$2;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/AuthenticationClient;->semDeliveryTouchEvent(Z)I

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$2;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/AuthenticationClient;->semDeliveryTouchEvent(Z)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$2;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    iget-object v0, v0, Lcom/android/server/fingerprint/AuthenticationClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/fingerprint/-$$Lambda$AuthenticationClient$2$MmGbx-WfDgKooUwOxo1sKAQRl2Q;

    invoke-direct {v1, p0}, Lcom/android/server/fingerprint/-$$Lambda$AuthenticationClient$2$MmGbx-WfDgKooUwOxo1sKAQRl2Q;-><init>(Lcom/android/server/fingerprint/AuthenticationClient$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$2;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    iget-boolean v0, v0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsKeyguard:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$2;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-static {v0}, Lcom/android/server/fingerprint/AuthenticationClient;->access$100(Lcom/android/server/fingerprint/AuthenticationClient;)I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$2;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    iget-object v0, v0, Lcom/android/server/fingerprint/AuthenticationClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/fingerprint/-$$Lambda$AuthenticationClient$2$v_fai2liS5JL6u8qyDWq0S17oRU;

    invoke-direct {v1, p0}, Lcom/android/server/fingerprint/-$$Lambda$AuthenticationClient$2$v_fai2liS5JL6u8qyDWq0S17oRU;-><init>(Lcom/android/server/fingerprint/AuthenticationClient$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$2;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-static {v0}, Lcom/android/server/fingerprint/AuthenticationClient;->access$200(Lcom/android/server/fingerprint/AuthenticationClient;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$2;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-static {v0}, Lcom/android/server/fingerprint/AuthenticationClient;->access$300(Lcom/android/server/fingerprint/AuthenticationClient;)Landroid/hardware/biometrics/IBiometricPromptReceiver;

    move-result-object v0

    if-eqz v0, :cond_4

    :try_start_0
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDialogDismissed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$2;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-static {v0}, Lcom/android/server/fingerprint/AuthenticationClient;->access$300(Lcom/android/server/fingerprint/AuthenticationClient;)Landroid/hardware/biometrics/IBiometricPromptReceiver;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/hardware/biometrics/IBiometricPromptReceiver;->onDialogDismissed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "FingerprintService"

    const-string v2, "Unable to notify dialog dismissed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$2;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    iget-object v0, v0, Lcom/android/server/fingerprint/AuthenticationClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/fingerprint/-$$Lambda$AuthenticationClient$2$ZIK_fzO20Sqg3KN6ToP1q6LbH8E;

    invoke-direct {v1, p0, p1}, Lcom/android/server/fingerprint/-$$Lambda$AuthenticationClient$2$ZIK_fzO20Sqg3KN6ToP1q6LbH8E;-><init>(Lcom/android/server/fingerprint/AuthenticationClient$2;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x4e21
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
