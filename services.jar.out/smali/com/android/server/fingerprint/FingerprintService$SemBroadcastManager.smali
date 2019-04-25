.class Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;
.super Ljava/lang/Object;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SemBroadcastManager"
.end annotation


# static fields
.field public static final BR_ENROLL:I = 0x1

.field public static final BR_FOD:I = 0x4

.field public static final BR_GESTURE:I = 0x2


# instance fields
.field mBrAlways:Landroid/content/BroadcastReceiver;

.field mBrScreenOff:Landroid/content/BroadcastReceiver;

.field mBrScreenOn:Landroid/content/BroadcastReceiver;

.field private mH:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;


# direct methods
.method private constructor <init>(Lcom/android/server/fingerprint/FingerprintService;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mH:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager$1;-><init>(Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;Lcom/android/server/fingerprint/FingerprintService;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mBrAlways:Landroid/content/BroadcastReceiver;

    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mBrAlways:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0, p1}, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->setReceiver(ZLandroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    return-void
.end method

.method private setReceiver(ZLandroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SemBroadcastManager : setReceiver : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p2, :cond_1

    const-string v0, "FingerprintService"

    const-string v1, "SemBroadcastManager : setReceiver : receiver is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-eqz p1, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$300(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$300(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_2

    :goto_1
    nop

    const-string v1, "FingerprintService"

    const-string v2, "SemBroadcastManager : failed to set receiver"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method


# virtual methods
.method declared-synchronized add(I)V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mBrScreenOff:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_3

    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager$2;

    invoke-direct {v1, p0}, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager$2;-><init>(Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;)V

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mBrScreenOff:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mBrScreenOff:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->setReceiver(ZLandroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    :cond_1
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mBrScreenOn:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_2

    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager$3;

    invoke-direct {v1, p0}, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager$3;-><init>(Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;)V

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mBrScreenOn:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.action.ACTION_SCREEN_ON_BY_PROXIMITY"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mBrScreenOn:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->setReceiver(ZLandroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :cond_2
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mBrScreenOff:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_3

    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager$4;

    invoke-direct {v1, p0}, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager$4;-><init>(Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;)V

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mBrScreenOff:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mBrScreenOff:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->setReceiver(ZLandroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method handleAction(Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SemBroadcastManager : onReceive : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x11

    if-nez v1, :cond_5

    const-string v1, "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.intent.action.ACTION_SCREEN_ON_BY_PROXIMITY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "android.intent.extra.user_handle"

    const/16 v2, -0x2710

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_USER_REMOVED: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v1, v2, :cond_b

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-static {v1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const-string v3, ""

    invoke-static {v2, v3, v1}, Lcom/android/server/fingerprint/FingerprintService;->access$5500(Lcom/android/server/fingerprint/FingerprintService;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_b

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const/4 v3, -0x1

    invoke-static {v2, v3, v1}, Lcom/android/server/fingerprint/FingerprintService;->access$5600(Lcom/android/server/fingerprint/FingerprintService;II)I

    goto/16 :goto_5

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->access$1900(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->access$5400(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/PowerManagerInternal;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->access$5400(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/PowerManagerInternal;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManagerInternal;->isProximityPositive()Z

    move-result v1

    if-nez v1, :cond_b

    sget-boolean v1, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v1, :cond_4

    sget-boolean v1, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_OPTICAL:Z

    if-nez v1, :cond_3

    const-string/jumbo v1, "fod_enable,1,1"

    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintUtils;->semWriteTSP(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->access$000(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/ClientMonitor;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string/jumbo v3, "fod_enable,1,1"

    invoke-static {v3}, Lcom/android/server/fingerprint/FingerprintUtils;->semWriteTSP(Ljava/lang/String;)V

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->access$5300(Lcom/android/server/fingerprint/FingerprintService;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->access$5200(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->setGestureMode(II)V

    goto :goto_5

    :cond_5
    :goto_2
    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v3}, Lcom/android/server/fingerprint/FingerprintService;->access$1900(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/PowerManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/fingerprint/FingerprintService;->startPostEnroll(Landroid/os/IBinder;)I

    const/4 v1, 0x1

    sget-boolean v3, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v3}, Lcom/android/server/fingerprint/FingerprintService;->access$000(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/ClientMonitor;

    move-result-object v3

    if-eqz v3, :cond_6

    const-string/jumbo v4, "fod_enable,1,0"

    invoke-static {v4}, Lcom/android/server/fingerprint/FingerprintUtils;->semWriteTSP(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    sget-boolean v4, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_OPTICAL:Z

    if-nez v4, :cond_7

    const-string/jumbo v4, "fod_enable,0"

    invoke-static {v4}, Lcom/android/server/fingerprint/FingerprintUtils;->semWriteTSP(Ljava/lang/String;)V

    :cond_7
    :goto_3
    goto :goto_4

    :cond_8
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v3}, Lcom/android/server/fingerprint/FingerprintService;->access$5400(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/PowerManagerInternal;

    move-result-object v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v3}, Lcom/android/server/fingerprint/FingerprintService;->access$5400(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/PowerManagerInternal;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManagerInternal;->isProximityPositive()Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v1, 0x1

    :cond_9
    :goto_4
    if-eqz v1, :cond_a

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v3}, Lcom/android/server/fingerprint/FingerprintService;->access$5300(Lcom/android/server/fingerprint/FingerprintService;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v3}, Lcom/android/server/fingerprint/FingerprintService;->access$5200(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->setGestureMode(II)V

    :cond_a
    nop

    :cond_b
    :goto_5
    return-void
.end method

.method declared-synchronized remove(I)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$5300(Lcom/android/server/fingerprint/FingerprintService;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mBrScreenOff:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->setReceiver(ZLandroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iput-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mBrScreenOff:Landroid/content/BroadcastReceiver;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$4300(Lcom/android/server/fingerprint/FingerprintService;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mBrScreenOff:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->setReceiver(ZLandroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iput-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mBrScreenOff:Landroid/content/BroadcastReceiver;

    :cond_1
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mBrScreenOn:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->setReceiver(ZLandroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iput-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mBrScreenOn:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    monitor-exit p0

    throw p1

    :cond_2
    :goto_1
    monitor-exit p0

    return-void
.end method
