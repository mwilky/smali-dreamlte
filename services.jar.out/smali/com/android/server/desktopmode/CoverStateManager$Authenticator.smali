.class Lcom/android/server/desktopmode/CoverStateManager$Authenticator;
.super Landroid/content/BroadcastReceiver;
.source "CoverStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/CoverStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Authenticator"
.end annotation


# instance fields
.field private mInputManagerService:Lcom/android/server/input/InputManagerService;

.field final synthetic this$0:Lcom/android/server/desktopmode/CoverStateManager;


# direct methods
.method private constructor <init>(Lcom/android/server/desktopmode/CoverStateManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/CoverStateManager$Authenticator;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/desktopmode/CoverStateManager;Lcom/android/server/desktopmode/CoverStateManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/CoverStateManager$Authenticator;-><init>(Lcom/android/server/desktopmode/CoverStateManager;)V

    return-void
.end method

.method public static synthetic lambda$initialize$0(Lcom/android/server/desktopmode/CoverStateManager$Authenticator;)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/desktopmode/CoverStateManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cover auth timeout, mAuthComplete="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/desktopmode/CoverStateManager$Authenticator;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-static {v2}, Lcom/android/server/desktopmode/CoverStateManager;->access$800(Lcom/android/server/desktopmode/CoverStateManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager$Authenticator;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/CoverStateManager;->access$800(Lcom/android/server/desktopmode/CoverStateManager;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/CoverStateManager$Authenticator;->setAuthCompleteAndResetCallbacksReceiver()V

    :cond_1
    return-void
.end method


# virtual methods
.method initialize()V
    .locals 4

    const-string/jumbo v0, "input"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/input/IInputManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/InputManagerService;

    iput-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager$Authenticator;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p0}, Lcom/android/server/desktopmode/CoverStateManager$Authenticator;->isAuthNeeded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager$Authenticator;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/CoverStateManager;->access$500(Lcom/android/server/desktopmode/CoverStateManager;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.samsung.android.intent.action.ACCESSORY_AUTHENTICATION_STOPPED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager$Authenticator;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager$Authenticator;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    new-instance v1, Lcom/android/server/desktopmode/CoverStateManager$Authenticator$1;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/CoverStateManager$Authenticator$1;-><init>(Lcom/android/server/desktopmode/CoverStateManager$Authenticator;)V

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->setDesktopModeServiceCallbacks(Lcom/android/server/input/InputManagerService$DesktopModeServiceCallbacks;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager$Authenticator;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/CoverStateManager;->access$900(Lcom/android/server/desktopmode/CoverStateManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager$Authenticator;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/CoverStateManager;->access$900(Lcom/android/server/desktopmode/CoverStateManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/desktopmode/-$$Lambda$CoverStateManager$Authenticator$7vh09VEIbD5UjkUw7cEIGW3FRoE;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/-$$Lambda$CoverStateManager$Authenticator$7vh09VEIbD5UjkUw7cEIGW3FRoE;-><init>(Lcom/android/server/desktopmode/CoverStateManager$Authenticator;)V

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/desktopmode/CoverStateManager$Authenticator;->setAuthComplete()V

    :goto_0
    return-void
.end method

.method isAuthNeeded()Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager$Authenticator;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager$Authenticator;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    const/4 v2, -0x1

    const/16 v3, -0x100

    const/16 v4, 0x1b

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/desktopmode/CoverStateManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceive(), action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager$Authenticator;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/CoverStateManager;->access$900(Lcom/android/server/desktopmode/CoverStateManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/server/desktopmode/CoverStateManager$Authenticator;->setAuthCompleteAndResetCallbacksReceiver()V

    return-void
.end method

.method setAuthComplete()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager$Authenticator;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/CoverStateManager;->access$100(Lcom/android/server/desktopmode/CoverStateManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/CoverStateManager$Authenticator;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/CoverStateManager;->access$800(Lcom/android/server/desktopmode/CoverStateManager;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/desktopmode/CoverStateManager$Authenticator;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/CoverStateManager;->access$802(Lcom/android/server/desktopmode/CoverStateManager;Z)Z

    iget-object v1, p0, Lcom/android/server/desktopmode/CoverStateManager$Authenticator;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/CoverStateManager;->access$1000(Lcom/android/server/desktopmode/CoverStateManager;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    invoke-virtual {v1, v2}, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;->scheduleUpdateDesktopMode(Z)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setAuthCompleteAndResetCallbacksReceiver()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/desktopmode/CoverStateManager$Authenticator;->setAuthComplete()V

    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager$Authenticator;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->setDesktopModeServiceCallbacks(Lcom/android/server/input/InputManagerService$DesktopModeServiceCallbacks;)V

    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager$Authenticator;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/CoverStateManager;->access$500(Lcom/android/server/desktopmode/CoverStateManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
