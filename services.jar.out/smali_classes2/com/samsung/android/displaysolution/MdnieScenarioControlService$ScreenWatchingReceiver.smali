.class final Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MdnieScenarioControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/displaysolution/MdnieScenarioControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScreenWatchingReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;


# direct methods
.method private constructor <init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MdnieScenarioControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action  :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    const-string v1, "MdnieScenarioControlService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mActivityManager  :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$200(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/app/ActivityManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", mMdnieManager  :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$300(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/hardware/display/SemMdnieManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", mMediaRouterManager  :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$400(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/media/MediaRouter;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", mSemDisplaySolutionManager  :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$500(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", DesktopModeFeature  :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$200(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/app/ActivityManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$300(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/hardware/display/SemMdnieManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$400(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/media/MediaRouter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$500(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$600(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object v3

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$600(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$700(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v5, v1

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessageAtTime(IJ)Z

    const-string v3, "MdnieScenarioControlService"

    const-string v4, "Failure to register all of the services system."

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$200(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/app/ActivityManager;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$800(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    :cond_2
    return-void

    :cond_3
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$900(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/app/KeyguardManager;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$1000(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "keyguard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    invoke-static {v1, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$902(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Landroid/app/KeyguardManager;)Landroid/app/KeyguardManager;

    const-string v1, "MdnieScenarioControlService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mKeyGuardManager : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$900(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/app/KeyguardManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$900(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/app/KeyguardManager;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$900(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/app/KeyguardManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v1, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$1102(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)Z

    :cond_5
    const-string v1, "MdnieScenarioControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isLockScreenOn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$1100(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$600(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object v3

    const/16 v4, 0x16

    invoke-virtual {v3, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$600(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$1200(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v5, v1

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessageAtTime(IJ)Z

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$1100(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$1300(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    :cond_6
    return-void

    :cond_7
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$1400(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    return-void

    :cond_8
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_a

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$200(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/app/ActivityManager;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    iget-object v1, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mProcessObserver:Landroid/app/IProcessObserver;

    const/4 v2, -0x1

    invoke-interface {v1, v2, v3, v3}, Landroid/app/IProcessObserver;->onForegroundActivitiesChanged(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MdnieScenarioControlService"

    const-string v4, "failed to onForegroundActivitiesChanged"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v1, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$1102(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)Z

    return-void

    :cond_a
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$1500(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$1600(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/app/NotificationManager;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$1600(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/app/NotificationManager;

    move-result-object v1

    const-string v2, "dialog"

    const/16 v4, 0x3e7

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v4, v5}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    :cond_b
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v1, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$1700(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)V

    :cond_c
    return-void

    :cond_d
    const-string v1, "NOTIFICATION_DISMISS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$1800(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    goto/16 :goto_2

    :cond_e
    const-string v1, "NOTIFICATION_SETTINGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$1900(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    goto/16 :goto_2

    :cond_f
    const-string v1, "NOTIFICATION_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v1, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$1502(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)Z

    goto/16 :goto_2

    :cond_10
    const-string v1, "ACTION_MOVIE_PLAYER_STATE_IN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v1, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$2002(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)Z

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v1, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$2102(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$600(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object v3

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$600(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$2200(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v5, v1

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_2

    :cond_11
    const-string v1, "ACTION_MOVIE_PLAYER_STATE_OUT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v1, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$2002(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)Z

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v1, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$2302(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$600(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$600(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$2400(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v5, v1

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_2

    :cond_12
    const-string v1, "ACTION_GAME_MODE_STATE_IN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const-string/jumbo v1, "mode"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v5, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$2502(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)Z

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$2600(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$600(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object v2

    const/16 v5, 0xe

    invoke-virtual {v2, v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$600(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object v2

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$2700(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v6, v3

    invoke-virtual {v2, v5, v6, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_1

    :cond_13
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$2800(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$600(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object v2

    const/16 v5, 0xf

    invoke-virtual {v2, v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$600(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object v2

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$2700(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v6, v3

    invoke-virtual {v2, v5, v6, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_1

    :cond_14
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$2900(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$600(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object v2

    const/16 v5, 0x10

    invoke-virtual {v2, v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$600(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object v2

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$2700(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v6, v3

    invoke-virtual {v2, v5, v6, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessageAtTime(IJ)Z

    :cond_15
    :goto_1
    goto :goto_2

    :cond_16
    const-string v1, "ACTION_GAME_MODE_STATE_OUT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v4, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$2502(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)Z

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$600(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object v3

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$600(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$3000(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v5, v1

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessageAtTime(IJ)Z

    :cond_17
    :goto_2
    return-void
.end method
