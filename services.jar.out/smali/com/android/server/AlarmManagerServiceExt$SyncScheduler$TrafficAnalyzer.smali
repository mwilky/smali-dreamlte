.class Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;
.super Ljava/lang/Object;
.source "AlarmManagerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TrafficAnalyzer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;,
        Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;
    }
.end annotation


# static fields
.field private static final CORELATION_TOLERANCE_VALUE:J = 0x2710L

.field private static final TRAFFICMONITOR_ON:Z = true


# instance fields
.field private mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

.field private mConnectivityReceiver:Landroid/content/BroadcastReceiver;

.field public volatile mDataConnectionIsConnected:Z

.field private mFgActivities:Landroid/util/SparseBooleanArray;

.field private mIgnorelist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;",
            ">;"
        }
    .end annotation
.end field

.field public volatile mIsScreenOn:Z

.field private mProcessObserver:Landroid/app/IProcessObserver;

.field private mSafeLock:Ljava/lang/Object;

.field private mScreenReceiver:Landroid/content/BroadcastReceiver;

.field private mWHITElist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mWatchlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

.field private whitelistCount:I


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->whitelistCount:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mIsScreenOn:Z

    iput-boolean v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mDataConnectionIsConnected:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWHITElist:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mIgnorelist:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWatchlist:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mFgActivities:Landroid/util/SparseBooleanArray;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mSafeLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    new-instance v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$1;

    invoke-direct {v0, p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$1;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$2;

    invoke-direct {v0, p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$2;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mProcessObserver:Landroid/app/IProcessObserver;

    new-instance v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$3;

    invoke-direct {v0, p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$3;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, "AlarmManagerEXT"

    const-string v1, "[TA] creating..."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v2, "AlarmManagerEXT"

    const-string v3, "[TA] created."

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mSafeLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWatchlist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWHITElist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mIgnorelist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)Landroid/net/ConnectivityManager;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)Landroid/util/SparseBooleanArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mFgActivities:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-static {v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$2800(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public ForegroundAppsCheckLocked(IJ)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWatchlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    iget v2, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->uid:I

    if-ne p1, v2, :cond_0

    iget-wide v2, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->lastTriggerTime:J

    sub-long v2, p2, v2

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    iget v2, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->UMCount:I

    iget v3, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->NfgCount:I

    sub-int/2addr v2, v3

    iget v3, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->fgCount:I

    if-ne v2, v3, :cond_0

    iget-boolean v2, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isRunPass:Z

    if-nez v2, :cond_0

    iget v2, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->fgCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->fgCount:I

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method

.method public determineListTypeLocked(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;)Z
    .locals 12

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "AlarmManagerEXT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TA] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v1, p1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->missCount:I

    const/4 v2, 0x3

    const-wide/16 v3, 0x1388

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    if-lt v1, v2, :cond_8

    iget-boolean v1, p1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->missCountEvenlyDistributed:Z

    if-nez v1, :cond_8

    iget v1, p1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->missCountAfterHit:I

    if-eqz v1, :cond_1

    iget v1, p1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->missCountAfterHit:I

    if-lt v1, v2, :cond_8

    :cond_1
    iget-boolean v1, p1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isWhite:Z

    if-nez v1, :cond_8

    new-instance v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    invoke-direct {v1, p0, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;)V

    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-static {v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$1500(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v9, p1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->pkgName:Ljava/lang/String;

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    return v7

    :cond_2
    goto :goto_0

    :cond_3
    iget-object v8, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mIgnorelist:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    int-to-long v8, v8

    cmp-long v3, v8, v3

    if-gez v3, :cond_4

    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mIgnorelist:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-static {v3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$1600(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    iget-object v8, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v8}, Landroid/app/PendingIntent;->hashCode()I

    move-result v8

    iget v9, p1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->piHashCode:I

    if-ne v8, v9, :cond_5

    iput-boolean v7, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    iput-wide v5, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    iput-wide v5, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    goto :goto_2

    :cond_5
    goto :goto_1

    :cond_6
    :goto_2
    const/4 v0, 0x1

    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "AlarmManagerEXT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[AppSync] moved to Ignore list: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    goto/16 :goto_b

    :cond_8
    iget v1, p1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->hitCount:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_16

    iget-boolean v1, p1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isWhite:Z

    if-nez v1, :cond_16

    iget-boolean v1, p1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->missCountEvenlyDistributed:Z

    if-eqz v1, :cond_d

    iget-boolean v1, p1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isUIalarm:Z

    if-nez v1, :cond_d

    new-instance v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    invoke-direct {v1, p0, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;)V

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWHITElist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    iget v8, v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->alarmHashCode:I

    iget v9, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->alarmHashCode:I

    if-ne v8, v9, :cond_9

    const/4 v2, 0x1

    goto :goto_4

    :cond_9
    goto :goto_3

    :cond_a
    :goto_4
    if-nez v2, :cond_c

    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isWhite:Z

    iput v7, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->missCountAfterHit:I

    iget-object v5, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWHITElist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    int-to-long v5, v5

    cmp-long v3, v5, v3

    if-gez v3, :cond_b

    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWHITElist:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "AlarmManagerEXT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[AppSync] moved to Whitelist: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    iget v4, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->alarmHashCode:I

    iget-wide v5, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalCalculated:J

    invoke-static {v3, v4, v5, v6}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$1900(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;IJ)V

    goto/16 :goto_a

    :cond_d
    new-instance v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    invoke-direct {v1, p0, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;)V

    const/4 v2, 0x0

    iget-object v8, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mIgnorelist:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    iget v10, v9, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->alarmHashCode:I

    iget v11, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->alarmHashCode:I

    if-ne v10, v11, :cond_e

    const/4 v2, 0x1

    goto :goto_6

    :cond_e
    goto :goto_5

    :cond_f
    :goto_6
    if-nez v2, :cond_15

    iget-object v8, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-static {v8}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$1500(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iget-object v10, p1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->pkgName:Ljava/lang/String;

    if-eqz v10, :cond_10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_10

    return v7

    :cond_10
    goto :goto_7

    :cond_11
    iput-boolean v7, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isWhite:Z

    iget-object v9, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mIgnorelist:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    int-to-long v9, v9

    cmp-long v3, v9, v3

    if-gez v3, :cond_12

    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mIgnorelist:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-static {v3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$1600(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    iget-object v9, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v9}, Landroid/app/PendingIntent;->hashCode()I

    move-result v9

    iget v10, p1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->piHashCode:I

    if-ne v9, v10, :cond_13

    iput-boolean v7, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    iput-wide v5, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    iput-wide v5, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    goto :goto_9

    :cond_13
    goto :goto_8

    :cond_14
    :goto_9
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v4

    if-eqz v4, :cond_15

    const-string v4, "AlarmManagerEXT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[AppSync] moved to Ignore list: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    :goto_a
    const/4 v0, 0x1

    :cond_16
    :goto_b
    return v0
.end method

.method public getWhitelistCount()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mSafeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->whitelistCount:I

    move v0, v2

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public lookForObjectInListLocked(Ljava/util/ArrayList;IIIJ)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;",
            ">;IIIJ)I"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, -0x1

    const-wide/16 v4, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    iget v6, v2, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->alarmHashCode:I

    if-ne v6, p4, :cond_2

    cmp-long v6, p5, v4

    if-lez v6, :cond_1

    iget-wide v6, v2, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalCalculated:J

    cmp-long v6, p5, v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWatchlist:Ljava/util/ArrayList;

    if-eq p1, v6, :cond_0

    const-wide/32 v6, 0x186a0

    rem-long v6, p5, v6

    cmp-long v4, v6, v4

    if-nez v4, :cond_1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    return v3

    :cond_1
    return v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    cmp-long v2, p5, v4

    if-lez v2, :cond_6

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    iget v5, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->uid:I

    if-ne v5, p2, :cond_5

    iget-wide v5, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalCalculated:J

    cmp-long v5, v5, p5

    if-nez v5, :cond_5

    iget v5, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->alarmHashCode:I

    if-nez v5, :cond_4

    return v0

    :cond_4
    iget v5, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->hitCount:I

    const/4 v6, 0x1

    if-lt v5, v6, :cond_5

    iget v5, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->missCount:I

    if-nez v5, :cond_5

    iput p4, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->alarmHashCode:I

    return v0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    return v3
.end method

.method public printWhitelist(ZLjava/io/PrintWriter;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mSafeLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->whitelistCount:I

    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWHITElist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    iget-wide v3, v2, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalTraffic:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->whitelistCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->whitelistCount:I

    const-wide/16 v3, 0x3e8

    if-eqz p1, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  (AppSync) "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->pkgName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v2, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalCalculated:J

    div-long/2addr v6, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v2, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalTraffic:J

    div-long/2addr v6, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v5, "AlarmManagerEXT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "(AppSync) "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v2, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalCalculated:J

    div-long/2addr v7, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v2, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalTraffic:J

    div-long/2addr v7, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    goto/16 :goto_0

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public queryTrafficPeriodicity(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;J)J
    .locals 24

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-wide/from16 v10, p2

    const/4 v12, 0x1

    iget v13, v9, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->keyId:I

    iget-object v0, v9, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v14

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v15

    iget-object v0, v9, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AlarmManagerEXT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TA] querying "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v16, -0x1

    iget-object v7, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mSafeLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-object v2, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mIgnorelist:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    move-object v1, v8

    move v3, v14

    move v4, v15

    move v5, v13

    move-object/from16 v18, v7

    move/from16 v17, v12

    move-object v12, v6

    move-wide v6, v10

    :try_start_1
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->lookForObjectInListLocked(Ljava/util/ArrayList;IIIJ)I

    move-result v0

    const-wide/16 v19, -0x1

    const/4 v6, -0x1

    if-le v0, v6, :cond_1

    monitor-exit v18

    return-wide v19

    :cond_1
    iget-object v2, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWHITElist:Ljava/util/ArrayList;

    move-object v1, v8

    move v3, v14

    move v4, v15

    move v5, v13

    move v0, v6

    move-wide v6, v10

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->lookForObjectInListLocked(Ljava/util/ArrayList;IIIJ)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move v6, v1

    if-le v6, v0, :cond_2

    :try_start_2
    iput-wide v10, v9, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    monitor-exit v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-wide v10

    :catchall_0
    move-exception v0

    move/from16 v16, v6

    goto/16 :goto_6

    :cond_2
    const/16 v16, 0x0

    :try_start_3
    iget-object v2, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWatchlist:Ljava/util/ArrayList;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object v1, v8

    move v3, v14

    move v4, v15

    move v5, v13

    move/from16 v21, v6

    move-wide v6, v10

    :try_start_4
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->lookForObjectInListLocked(Ljava/util/ArrayList;IIIJ)I

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 v4, 0x1

    if-le v1, v0, :cond_b

    :try_start_5
    iget-object v7, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWatchlist:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    iget-wide v2, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->targetWhen:J

    cmp-long v2, v21, v2

    if-gez v2, :cond_b

    iget v2, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->resetCount:I

    add-int/2addr v2, v4

    iput v2, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->resetCount:I

    iget v2, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->resetCount:I

    const/16 v3, 0xa

    if-le v2, v3, :cond_b

    iget-object v0, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWatchlist:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v2, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mIgnorelist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    iget v4, v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->alarmHashCode:I

    iget v5, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->alarmHashCode:I

    if-ne v4, v5, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    goto :goto_0

    :cond_4
    :goto_1
    if-nez v0, :cond_a

    iget-object v2, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-static {v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$1500(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, v9, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    monitor-exit v18

    const-wide/16 v5, 0x0

    return-wide v5

    :cond_5
    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    iput-boolean v3, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isWhite:Z

    iget-object v4, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mIgnorelist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v21, 0x1388

    cmp-long v4, v4, v21

    if-gez v4, :cond_7

    iget-object v4, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mIgnorelist:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-object v4, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-static {v4}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$1600(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    iget-object v6, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v6}, Landroid/app/PendingIntent;->hashCode()I

    move-result v6

    iget-object v3, v9, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->hashCode()I

    move-result v3

    if-ne v6, v3, :cond_8

    const/4 v3, 0x0

    iput-boolean v3, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    move-object/from16 v23, v2

    const-wide/16 v2, 0x0

    iput-wide v2, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    iput-wide v2, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    goto :goto_4

    :cond_8
    move-object/from16 v23, v2

    const/4 v3, 0x0

    goto :goto_3

    :cond_9
    move-object/from16 v23, v2

    :goto_4
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "AlarmManagerEXT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[AppSync][Periodicity] moved to Ignore list: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    monitor-exit v18

    return-wide v19

    :catchall_1
    move-exception v0

    move/from16 v16, v1

    goto/16 :goto_6

    :cond_b
    if-eq v1, v0, :cond_c

    if-eqz v16, :cond_f

    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long v5, v2, v5

    new-instance v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    invoke-direct {v0, v8}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)V

    iput-object v12, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->pkgName:Ljava/lang/String;

    iput v14, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->uid:I

    iput v15, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->pid:I

    iget-object v2, v9, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->hashCode()I

    move-result v2

    iput v2, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->piHashCode:I

    iput v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->alarmHashCode:I

    iget-boolean v2, v9, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isExact:Z

    iput-boolean v2, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isExact:Z

    iput-wide v10, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalCalculated:J

    iget-wide v2, v9, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    iput-wide v2, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalRequested:J

    iget-wide v2, v9, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    iget v7, v9, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    if-gt v7, v4, :cond_d

    const-wide/16 v19, 0x0

    goto :goto_5

    :cond_d
    move-wide/from16 v19, v5

    :goto_5
    add-long v2, v2, v19

    iput-wide v2, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->targetWhen:J

    iget-object v2, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWatchlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v19, 0x1388

    cmp-long v2, v2, v19

    if-gez v2, :cond_e

    iget-object v2, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWatchlist:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "AlarmManagerEXT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[AppSync][Periodicity] added to Watchlist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    monitor-exit v18
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const-wide/16 v2, 0x0

    return-wide v2

    :catchall_2
    move-exception v0

    move/from16 v16, v21

    goto :goto_6

    :catchall_3
    move-exception v0

    move/from16 v21, v6

    move/from16 v16, v21

    goto :goto_6

    :catchall_4
    move-exception v0

    goto :goto_6

    :catchall_5
    move-exception v0

    move-object/from16 v18, v7

    move/from16 v17, v12

    move-object v12, v6

    :goto_6
    :try_start_6
    monitor-exit v18
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v0
.end method

.method public removeAlarmRecord(Ljava/lang/String;II)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mSafeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWHITElist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    if-eqz p1, :cond_0

    iget-object v4, v2, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->pkgName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    if-eq p2, v3, :cond_1

    iget v4, v2, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-eq v4, p2, :cond_2

    :cond_1
    if-eq p3, v3, :cond_3

    iget v3, v2, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->uid:I

    if-ne v3, p3, :cond_3

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    :cond_3
    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWatchlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    if-eqz p1, :cond_5

    iget-object v5, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->pkgName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    :cond_5
    if-eq p2, v3, :cond_6

    iget v5, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-eq v5, p2, :cond_7

    :cond_6
    if-eq p3, v3, :cond_8

    iget v5, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->uid:I

    if-ne v5, p3, :cond_8

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    :cond_8
    goto :goto_1

    :cond_9
    iget-object v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mIgnorelist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    if-eqz p1, :cond_a

    iget-object v6, v5, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    :cond_a
    if-eq p2, v3, :cond_b

    iget v6, v5, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-eq v6, p2, :cond_c

    :cond_b
    if-eq p3, v3, :cond_d

    iget v6, v5, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->uid:I

    if-ne v6, p3, :cond_d

    :cond_c
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    :cond_d
    goto :goto_2

    :cond_e
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeUnusedAlarmRecord(JZLjava/io/PrintWriter;)V
    .locals 14

    move-object v1, p0

    move-object/from16 v2, p4

    iget-object v3, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mSafeLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_6

    :cond_0
    iget-object v0, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWHITElist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    if-eqz p3, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[AppSync] WHITE: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v5, "AlarmManagerEXT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[AppSync] WHITE: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    goto :goto_0

    :cond_2
    iget-object v0, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mIgnorelist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    if-eqz p3, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[AppSync] ignore: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    const-string v5, "AlarmManagerEXT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[AppSync] ignore: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    goto :goto_2

    :cond_4
    iget-object v0, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWatchlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    if-eqz p3, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[AppSync] watch: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    const-string v5, "AlarmManagerEXT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[AppSync] watch: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    goto :goto_4

    :cond_6
    iget-object v0, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWatchlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-wide/16 v5, 0x3

    if-eqz v4, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    iget-wide v7, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->lastTriggerTime:J

    iget-wide v9, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->targetWhen:J

    cmp-long v7, v7, v9

    if-gez v7, :cond_7

    iget-wide v7, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->targetWhen:J

    goto :goto_7

    :cond_7
    iget-wide v7, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->lastTriggerTime:J

    :goto_7
    iget-wide v9, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalCalculated:J

    mul-long/2addr v9, v5

    add-long/2addr v9, v7

    cmp-long v5, v9, p1

    if-gez v5, :cond_9

    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "AlarmManagerEXT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[AppSync] removeW: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_9
    goto :goto_6

    :cond_a
    iget-object v4, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mIgnorelist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    iget v8, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->triggerCount:I

    iget v9, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->hitCount:I

    sub-int/2addr v8, v9

    iget v9, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->missCount:I

    sub-int/2addr v8, v9

    int-to-long v9, v8

    iget-wide v11, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalTrigger:J

    mul-long/2addr v9, v11

    const-wide/32 v11, 0x2932e00

    cmp-long v9, v9, v11

    if-ltz v9, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v9

    if-eqz v9, :cond_f

    const-string v9, "AlarmManagerEXT"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[AppSync] removeI expiration: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_b
    iget-wide v9, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->lastTriggerTime:J

    iget-wide v11, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->targetWhen:J

    cmp-long v9, v9, v11

    if-gez v9, :cond_c

    iget-wide v9, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->targetWhen:J

    goto :goto_9

    :cond_c
    iget-wide v9, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->lastTriggerTime:J

    :goto_9
    iget-wide v11, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalCalculated:J

    mul-long/2addr v11, v5

    add-long/2addr v11, v9

    cmp-long v11, v11, p1

    if-gez v11, :cond_e

    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v11

    if-eqz v11, :cond_d

    const-string v11, "AlarmManagerEXT"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[AppSync] removeI: "

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    :cond_e
    nop

    :cond_f
    :goto_a
    const-wide/16 v5, 0x3

    goto :goto_8

    :cond_10
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateAlarmTriggerInfo(Landroid/app/PendingIntent;IJ)V
    .locals 24

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move-wide/from16 v11, p3

    iget-object v0, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->this$0:Lcom/android/server/AlarmManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt;->mAms:Lcom/android/server/AlarmManagerService;

    invoke-static {v0, v9}, Lcom/android/server/AlarmManagerServiceExt;->access$000(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)I

    move-result v13

    invoke-static/range {p1 .. p1}, Lcom/android/server/AlarmManagerServiceExt;->access$1700(Landroid/app/PendingIntent;)I

    move-result v14

    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AlarmManagerEXT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TA][Trigger] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v15, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mSafeLock:Ljava/lang/Object;

    monitor-enter v15

    const/4 v0, -0x1

    :try_start_0
    iget-object v2, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWHITElist:Ljava/util/ArrayList;

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, v8

    move v3, v14

    move v5, v13

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->lookForObjectInListLocked(Ljava/util/ArrayList;IIIJ)I

    move-result v1

    move v6, v1

    const-wide/16 v16, 0x5

    const-wide/16 v18, 0x0

    const/4 v0, -0x1

    const/4 v7, 0x1

    if-eq v6, v0, :cond_6

    iget-object v0, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWHITElist:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    move-object v1, v0

    iget v0, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->triggerCount:I

    add-int/2addr v0, v7

    iput v0, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->triggerCount:I

    invoke-virtual {v1, v10, v11, v12}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->updateTriggerTimeLocked(IJ)V

    const/4 v2, 0x1

    iget-boolean v0, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mIsScreenOn:Z

    if-eqz v0, :cond_2

    iget-object v0, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-static {v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$1800(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    iget-object v0, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mFgActivities:Landroid/util/SparseBooleanArray;

    iget v4, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->uid:I

    invoke-virtual {v0, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    iput-boolean v7, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isRunPass:Z

    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    :cond_2
    :goto_0
    iget-wide v3, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalTrigger:J

    cmp-long v0, v3, v18

    if-lez v0, :cond_3

    iget-wide v3, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalTrigger:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    iget-wide v7, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalCalculated:J

    div-long v7, v7, v16

    cmp-long v0, v3, v7

    if-gez v0, :cond_3

    const/4 v2, 0x0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v8, p0

    goto/16 :goto_7

    :cond_3
    :goto_1
    if-eqz v2, :cond_5

    invoke-static {v14}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->txbytes0time:J

    const/4 v7, 0x1

    iput-boolean v7, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isMonitorON:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v8, p0

    :try_start_5
    invoke-direct {v3, v8}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)V

    nop

    invoke-virtual {v3, v1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;->setAlarmInfo(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;)V

    const-wide/16 v4, 0x2710

    invoke-virtual {v0, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "AlarmManagerEXT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[TA] isRunpass="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isRunPass:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->pkgName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_4
    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v8, p0

    :goto_2
    :try_start_6
    const-string v3, "AlarmManagerEXT"

    const-string v4, "OutOfMemory"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    move-object/from16 v8, p0

    :goto_3
    monitor-exit v15

    return-void

    :cond_6
    const-wide/16 v4, 0x2710

    iget-object v2, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mIgnorelist:Ljava/util/ArrayList;

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    move-object v1, v8

    move v3, v14

    move/from16 v4, v20

    move v5, v13

    move/from16 v20, v6

    move-wide/from16 v6, v21

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->lookForObjectInListLocked(Ljava/util/ArrayList;IIIJ)I

    move-result v1

    move v6, v1

    if-le v1, v0, :cond_7

    iget-object v0, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mIgnorelist:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    iget v1, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->triggerCount:I

    const/4 v7, 0x1

    add-int/2addr v1, v7

    iput v1, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->triggerCount:I

    invoke-virtual {v0, v10, v11, v12}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->updateTriggerTimeLocked(IJ)V

    monitor-exit v15

    return-void

    :cond_7
    const/4 v7, 0x1

    iget-object v2, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWatchlist:Ljava/util/ArrayList;

    const/4 v4, 0x0

    const-wide/16 v20, 0x0

    move-object v1, v8

    move v3, v14

    move v5, v13

    move/from16 v22, v6

    move-wide/from16 v6, v20

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->lookForObjectInListLocked(Ljava/util/ArrayList;IIIJ)I

    move-result v1

    if-eq v1, v0, :cond_d

    iget-object v0, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWatchlist:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    move-object v2, v0

    iget v0, v2, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->triggerCount:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    iput v0, v2, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->triggerCount:I

    invoke-virtual {v2, v10, v11, v12}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->updateTriggerTimeLocked(IJ)V

    const/4 v4, 0x1

    iget-boolean v0, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mIsScreenOn:Z

    if-eqz v0, :cond_9

    iget-object v0, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-static {v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$1800(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    iget-object v0, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mFgActivities:Landroid/util/SparseBooleanArray;

    iget v6, v2, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->uid:I

    invoke-virtual {v0, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v4, 0x0

    iput-boolean v3, v2, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isRunPass:Z

    :cond_8
    monitor-exit v5

    goto :goto_4

    :catchall_2
    move-exception v0

    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v0

    :cond_9
    :goto_4
    iget-wide v5, v2, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalTrigger:J

    cmp-long v0, v5, v18

    if-lez v0, :cond_a

    iget-wide v5, v2, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalTrigger:J

    move/from16 v23, v4

    iget-wide v3, v2, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalCalculated:J

    div-long v3, v3, v16

    cmp-long v0, v5, v3

    if-gez v0, :cond_b

    const/4 v4, 0x0

    move/from16 v23, v4

    goto :goto_5

    :cond_a
    move/from16 v23, v4

    :cond_b
    :goto_5
    if-eqz v23, :cond_d

    invoke-static {v14}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->txbytes0time:J

    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isMonitorON:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;

    invoke-direct {v3, v8}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)V

    nop

    invoke-virtual {v3, v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;->setAlarmInfo(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;)V

    const-wide/16 v4, 0x2710

    invoke-virtual {v0, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, "AlarmManagerEXT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[TA] isRunpass="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v2, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isRunPass:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->pkgName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :cond_c
    goto :goto_6

    :catch_2
    move-exception v0

    :try_start_a
    const-string v3, "AlarmManagerEXT"

    const-string v4, "OutOfMemory"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_6
    monitor-exit v15

    return-void

    :catchall_3
    move-exception v0

    :goto_7
    monitor-exit v15
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v0
.end method

.method public updateEmailSyncStatus(JJ[J)J
    .locals 25

    move-object/from16 v8, p0

    move-object/from16 v9, p5

    const/4 v0, 0x0

    array-length v10, v9

    const/4 v11, 0x2

    const-wide/16 v12, 0x0

    move v2, v0

    move-wide v0, v12

    :goto_0
    if-ge v2, v10, :cond_7

    add-int/lit8 v3, v2, 0x1

    aget-wide v14, v9, v2

    add-int/lit8 v16, v3, 0x1

    aget-wide v2, v9, v3

    cmp-long v4, v14, v12

    if-gez v4, :cond_0

    move/from16 v2, v16

    goto :goto_0

    :cond_0
    cmp-long v4, p1, v14

    if-nez v4, :cond_6

    cmp-long v4, v2, v12

    if-nez v4, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    :cond_1
    move-wide/from16 v17, v2

    sub-long v2, p3, v17

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "AlarmManagerEXT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(Email) ID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", interval:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-wide/16 v4, 0x3e8

    sub-long v4, v2, v4

    long-to-double v4, v4

    const-wide v6, 0x41124f8000000000L    # 300000.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-long v4, v4

    const-wide/32 v6, 0x493e0

    mul-long v19, v4, v6

    cmp-long v2, v19, v6

    if-ltz v2, :cond_6

    rem-long v2, v19, v6

    cmp-long v2, v2, v12

    if-nez v2, :cond_6

    move-wide/from16 v6, v19

    iget-object v5, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mSafeLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v2, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWHITElist:Ljava/util/ArrayList;

    iget-object v0, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-static {v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$2000(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)I

    move-result v3

    iget-object v0, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-static {v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$2100(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-int v0, v14

    const-wide/16 v21, 0x0

    move-object v1, v8

    move-object/from16 v23, v5

    move v5, v0

    move-wide v12, v6

    move-wide/from16 v6, v21

    :try_start_1
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->lookForObjectInListLocked(Ljava/util/ArrayList;IIIJ)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget-object v2, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWHITElist:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    iget-wide v2, v2, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalTraffic:J

    cmp-long v2, v2, v12

    if-eqz v2, :cond_3

    iget-object v2, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWHITElist:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v0, -0x1

    :cond_3
    if-ne v0, v1, :cond_5

    new-instance v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    invoke-direct {v1, v8}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)V

    const-string v2, "com.android.email"

    iput-object v2, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->pkgName:Ljava/lang/String;

    iget-object v2, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-static {v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$2000(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)I

    move-result v2

    iput v2, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->uid:I

    iget-object v2, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-static {v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$2100(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)I

    move-result v2

    iput v2, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->pid:I

    long-to-int v2, v14

    iput v2, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->alarmHashCode:I

    iput-wide v12, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalTraffic:J

    iput-wide v12, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalTrigger:J

    iput-wide v12, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalRequested:J

    iput-wide v12, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalCalculated:J

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isWhite:Z

    iget-object v2, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWHITElist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-gez v2, :cond_4

    iget-object v2, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWHITElist:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "AlarmManagerEXT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[AppSync] moved to Whitelist; Email IDX:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    monitor-exit v23

    move-wide v0, v12

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object/from16 v23, v5

    move-wide v12, v6

    :goto_1
    monitor-exit v23
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1

    :cond_6
    :goto_2
    nop

    move/from16 v2, v16

    const-wide/16 v12, 0x0

    goto/16 :goto_0

    :cond_7
    return-wide v0
.end method
