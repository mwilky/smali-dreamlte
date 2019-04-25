.class Lcom/android/server/fingerprint/FingerprintService$13;
.super Landroid/app/SynchronousUserSwitchObserver;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService;->listenForUserSwitches()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$13;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-direct {p0}, Landroid/app/SynchronousUserSwitchObserver;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onUserSwitchComplete$0(Lcom/android/server/fingerprint/FingerprintService$13;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_GESTURE_MODE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$13;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$5200(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->readValue()V

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$13;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$5200(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->observe(Z)V

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$13;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$5200(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->mIsEnabledFpMotion:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$13;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$5200(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;

    move-result-object v0

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->setGestureMode(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onUserSwitchComplete(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserSwitchComplete : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$13;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$500(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$13$iWOQX5Gmm-nmlj52mDp5Hocn78g;

    invoke-direct {v1, p0}, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$13$iWOQX5Gmm-nmlj52mDp5Hocn78g;-><init>(Lcom/android/server/fingerprint/FingerprintService$13;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onUserSwitching(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$13;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$500(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
