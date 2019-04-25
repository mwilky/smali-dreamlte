.class final Lcom/android/server/am/Pageboost;
.super Ljava/lang/Object;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/Pageboost$VramdiskLogger;,
        Lcom/android/server/am/Pageboost$PageboostFileDBHelper;,
        Lcom/android/server/am/Pageboost$ApkParser;,
        Lcom/android/server/am/Pageboost$PageboostAppDBHelper;,
        Lcom/android/server/am/Pageboost$BigDataProxy;,
        Lcom/android/server/am/Pageboost$DaemonConnector;,
        Lcom/android/server/am/Pageboost$VramdiskdProxy;,
        Lcom/android/server/am/Pageboost$PageboostdProxy;,
        Lcom/android/server/am/Pageboost$PageboostHandler;,
        Lcom/android/server/am/Pageboost$PageboostAppCapture;,
        Lcom/android/server/am/Pageboost$FileMapInfo;,
        Lcom/android/server/am/Pageboost$FileMapList;,
        Lcom/android/server/am/Pageboost$NoPreDo;,
        Lcom/android/server/am/Pageboost$IoPrefetch;,
        Lcom/android/server/am/Pageboost$PreDo;,
        Lcom/android/server/am/Pageboost$PageboostAppInfo;,
        Lcom/android/server/am/Pageboost$PageboostPredictor;,
        Lcom/android/server/am/Pageboost$SIPolicy;,
        Lcom/android/server/am/Pageboost$LRUPolicy;,
        Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;,
        Lcom/android/server/am/Pageboost$Vramdisk;,
        Lcom/android/server/am/Pageboost$VramdiskPreferredAppManager;,
        Lcom/android/server/am/Pageboost$VramdiskHotFileManager;,
        Lcom/android/server/am/Pageboost$VramdiskXMLParser;,
        Lcom/android/server/am/Pageboost$PageboostAppList;
    }
.end annotation


# static fields
.field private static final ACTION_BIGDATA:Ljava/lang/String; = "com.sec.android.intent.action.HQM_UPDATE_REQ"

.field private static final ACTION_PAGEBOOST:Ljava/lang/String; = "com.android.server.am.ACTION_PAGEBOOST"

.field private static final ACTION_PAGEBOOST_LEGACY:Ljava/lang/String; = "com.sec.android.launcher.action.RUN_APP"

.field private static final APP_ENTRY_TRIGGER_DELAY:I = 0xbb8

.field private static final CAPTURE_TRIGGER_DELAY:I = 0x7d0

.field private static final DEBUG:Z = false

.field private static final DELAYED_INIT_DELAY:I = 0xbb8

.field private static final MSG_APP_CAPTURE:I = 0x5

.field private static final MSG_APP_ENTRY:I = 0x9

.field private static final MSG_APP_ENTRY_DELAYED:I = 0xb

.field private static final MSG_APP_REENTRY:I = 0xa

.field private static final MSG_APP_REENTRY_DELAYED:I = 0xc

.field private static final MSG_DELAYED_INIT:I = 0x1

.field private static final MSG_LAUNCHER_SCROLL:I = 0x3

.field private static final MSG_LAUNCHER_SCROLL_CLEAR:I = 0x2

.field private static final MSG_PACKAGE_UPDATE:I = 0x4

.field private static final MSG_PKG_ADD:I = 0x7

.field private static final MSG_PKG_DEL:I = 0x8

.field private static final MSG_SEND_BIGDATA:I = 0xd

.field private static final MSG_TERMINATE:I = 0x6

.field private static final PAGEBOOST_IGNORE_DRAM_SPECIFICATION:Z

.field private static final PAGEBOOST_IO_PREFETCH_ENABLED:Z

.field private static final PAGEBOOST_VRAMDISK_ENABLED:Z

.field private static final PAGE_SIZE:J = 0x1000L

.field private static final PREFETCH_TRIGGER_DELAY:I = 0x190

.field private static final TAG:Ljava/lang/String;

.field private static mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private static mAppDB:Landroid/database/sqlite/SQLiteDatabase;

.field private static mAppDBHelper:Lcom/android/server/am/Pageboost$PageboostAppDBHelper;

.field private static mContext:Landroid/content/Context;

.field private static mFileDB:Landroid/database/sqlite/SQLiteDatabase;

.field private static mFileDBHelper:Lcom/android/server/am/Pageboost$PageboostFileDBHelper;

.field private static mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

.field private static mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private static mPredictor:Lcom/android/server/am/Pageboost$PageboostPredictor;

.field private static mReceiver:Landroid/content/BroadcastReceiver;

.field private static mSysintManager:Lcom/samsung/android/sysint/SemSysIntManager;

.field private static mSystemServerFileMap:Lcom/android/server/am/Pageboost$FileMapList;

.field private static mVramdisk:Lcom/android/server/am/Pageboost$Vramdisk;

.field private static mZygote64FileMap:Lcom/android/server/am/Pageboost$FileMapList;

.field private static sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

.field private static sHandlerThread:Lcom/android/server/ServiceThread;

.field private static user_unlock_done:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lcom/android/server/am/Pageboost;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "true"

    const-string/jumbo v1, "ro.config.pageboost.io_prefetch.enabled"

    const-string/jumbo v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    const-string/jumbo v0, "true"

    const-string/jumbo v1, "ro.config.pageboost.vramdisk.enabled"

    const-string/jumbo v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_VRAMDISK_ENABLED:Z

    const-string/jumbo v0, "true"

    const-string/jumbo v1, "ro.config.pageboost.ignore_dram_spec"

    const-string/jumbo v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IGNORE_DRAM_SPECIFICATION:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;

    sput-object v0, Lcom/android/server/am/Pageboost;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    sput-object v0, Lcom/android/server/am/Pageboost;->sHandlerThread:Lcom/android/server/ServiceThread;

    sput-object v0, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    sput-object v0, Lcom/android/server/am/Pageboost;->mPredictor:Lcom/android/server/am/Pageboost$PageboostPredictor;

    sput-object v0, Lcom/android/server/am/Pageboost;->mVramdisk:Lcom/android/server/am/Pageboost$Vramdisk;

    sput-object v0, Lcom/android/server/am/Pageboost;->mSysintManager:Lcom/samsung/android/sysint/SemSysIntManager;

    sput-object v0, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    sput-object v0, Lcom/android/server/am/Pageboost;->mReceiver:Landroid/content/BroadcastReceiver;

    sput-object v0, Lcom/android/server/am/Pageboost;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    sput-object v0, Lcom/android/server/am/Pageboost;->mAppDBHelper:Lcom/android/server/am/Pageboost$PageboostAppDBHelper;

    sput-object v0, Lcom/android/server/am/Pageboost;->mFileDBHelper:Lcom/android/server/am/Pageboost$PageboostFileDBHelper;

    sput-object v0, Lcom/android/server/am/Pageboost;->mAppDB:Landroid/database/sqlite/SQLiteDatabase;

    sput-object v0, Lcom/android/server/am/Pageboost;->mFileDB:Landroid/database/sqlite/SQLiteDatabase;

    sput-object v0, Lcom/android/server/am/Pageboost;->mSystemServerFileMap:Lcom/android/server/am/Pageboost$FileMapList;

    sput-object v0, Lcom/android/server/am/Pageboost;->mZygote64FileMap:Lcom/android/server/am/Pageboost$FileMapList;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/Pageboost;->user_unlock_done:Z

    sget-object v0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    const-string v1, "Static Initialization of Pageboost"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/ServiceThread;

    const-class v1, Lcom/android/server/am/Pageboost;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/server/am/Pageboost;->sHandlerThread:Lcom/android/server/ServiceThread;

    sget-object v0, Lcom/android/server/am/Pageboost;->sHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    new-instance v0, Lcom/android/server/am/Pageboost$PageboostHandler;

    sget-object v1, Lcom/android/server/am/Pageboost;->sHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/am/Pageboost$PageboostHandler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    new-instance v0, Lcom/android/server/am/Pageboost$PageboostPredictor;

    invoke-direct {v0}, Lcom/android/server/am/Pageboost$PageboostPredictor;-><init>()V

    sput-object v0, Lcom/android/server/am/Pageboost;->mPredictor:Lcom/android/server/am/Pageboost$PageboostPredictor;

    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/am/Pageboost$Vramdisk;->setConfiguration(J)V

    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_VRAMDISK_ENABLED:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/am/Pageboost$Vramdisk;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/server/am/Pageboost$Vramdisk;

    invoke-direct {v0}, Lcom/android/server/am/Pageboost$Vramdisk;-><init>()V

    sput-object v0, Lcom/android/server/am/Pageboost;->mVramdisk:Lcom/android/server/am/Pageboost$Vramdisk;

    :cond_0
    new-instance v0, Lcom/android/server/am/Pageboost$1;

    invoke-direct {v0}, Lcom/android/server/am/Pageboost$1;-><init>()V

    sput-object v0, Lcom/android/server/am/Pageboost;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/am/Pageboost$2;

    invoke-direct {v0}, Lcom/android/server/am/Pageboost$2;-><init>()V

    sput-object v0, Lcom/android/server/am/Pageboost;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static DelayedInitPageboost()V
    .locals 6

    sget-object v0, Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/am/Pageboost;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/am/Pageboost;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.android.launcher.action.RUN_APP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.server.am.ACTION_PAGEBOOST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.REBOOT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/am/Pageboost;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/server/am/Pageboost;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;

    sget-object v3, Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/android/server/am/Pageboost;->mAppDBHelper:Lcom/android/server/am/Pageboost$PageboostAppDBHelper;

    sget-object v2, Lcom/android/server/am/Pageboost;->mAppDBHelper:Lcom/android/server/am/Pageboost$PageboostAppDBHelper;

    invoke-virtual {v2}, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sput-object v2, Lcom/android/server/am/Pageboost;->mAppDB:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Lcom/android/server/am/Pageboost$PageboostFileDBHelper;

    sget-object v3, Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/android/server/am/Pageboost;->mFileDBHelper:Lcom/android/server/am/Pageboost$PageboostFileDBHelper;

    sget-object v2, Lcom/android/server/am/Pageboost;->mFileDBHelper:Lcom/android/server/am/Pageboost$PageboostFileDBHelper;

    invoke-virtual {v2}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sput-object v2, Lcom/android/server/am/Pageboost;->mFileDB:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/android/server/am/Pageboost;->mFileDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/am/Pageboost;->mFileDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v2}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper;->initFileDB(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    const-string/jumbo v2, "zygote64"

    const-string/jumbo v3, "system_server"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v3

    new-instance v4, Lcom/android/server/am/Pageboost$FileMapList;

    const/4 v5, 0x0

    aget v5, v3, v5

    invoke-direct {v4, v5}, Lcom/android/server/am/Pageboost$FileMapList;-><init>(I)V

    sput-object v4, Lcom/android/server/am/Pageboost;->mZygote64FileMap:Lcom/android/server/am/Pageboost$FileMapList;

    new-instance v4, Lcom/android/server/am/Pageboost$FileMapList;

    const/4 v5, 0x1

    aget v5, v3, v5

    invoke-direct {v4, v5}, Lcom/android/server/am/Pageboost$FileMapList;-><init>(I)V

    sput-object v4, Lcom/android/server/am/Pageboost;->mSystemServerFileMap:Lcom/android/server/am/Pageboost$FileMapList;

    invoke-static {}, Lcom/android/server/am/Pageboost$BigDataProxy;->InitBigDataProxy()V

    invoke-static {}, Lcom/android/server/am/Pageboost$PageboostdProxy;->InitPageboostdProxy()V

    sget-boolean v4, Lcom/android/server/am/Pageboost;->PAGEBOOST_VRAMDISK_ENABLED:Z

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/server/am/Pageboost$Vramdisk;->access$000()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/server/am/Pageboost$VramdiskdProxy;->InitVramdiskdProxy()V

    :cond_1
    const-string/jumbo v4, "file"

    invoke-static {v4}, Lcom/android/server/am/Pageboost$VramdiskXMLParser;->getString(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/Pageboost$VramdiskHotFileManager;->gatherFiles(Ljava/util/LinkedList;)V

    invoke-static {}, Lcom/android/server/am/Pageboost$VramdiskHotFileManager;->lock()V

    const-string v4, "app"

    invoke-static {v4}, Lcom/android/server/am/Pageboost$VramdiskXMLParser;->getString(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/Pageboost$VramdiskPreferredAppManager;->gatherApps(Ljava/util/LinkedList;)V

    sget-object v4, Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;

    const-class v5, Lcom/samsung/android/sysint/SemSysIntManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sysint/SemSysIntManager;

    sput-object v4, Lcom/android/server/am/Pageboost;->mSysintManager:Lcom/samsung/android/sysint/SemSysIntManager;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    const-string v1, "Pageboost Delayed Init Failed"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static GatherLaunchTime(Ljava/lang/String;I)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launch time gathered : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/android/server/am/Pageboost$PageboostHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-string/jumbo v2, "pkg"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "launchtime"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    sget-object v2, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/Pageboost$PageboostHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private static GetPidFromPackageName(Ljava/lang/String;)I
    .locals 8

    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/am/Pageboost;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    sget-object v2, Lcom/android/server/am/Pageboost;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_0
    if-ltz v4, :cond_1

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_0

    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v6, :cond_0

    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    const-string v7, "cch-empty"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget v6, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    move v0, v6

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v0

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method public static InitPageboost(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 4

    sput-object p0, Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;

    sput-object p1, Lcom/android/server/am/Pageboost;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    sget-object v0, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/Pageboost$PageboostHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/Pageboost$PageboostHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public static UpdatePackages()V
    .locals 4

    sget-object v0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    const-string v1, "Update Packages"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/am/Pageboost$PageboostHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/Pageboost$PageboostHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100()Lcom/samsung/android/sysint/SemSysIntManager;
    .locals 1

    sget-object v0, Lcom/android/server/am/Pageboost;->mSysintManager:Lcom/samsung/android/sysint/SemSysIntManager;

    return-object v0
.end method

.method static synthetic access$1200()Lcom/android/server/am/ActivityManagerService;
    .locals 1

    sget-object v0, Lcom/android/server/am/Pageboost;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$1300()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    sget-object v0, Lcom/android/server/am/Pageboost;->mFileDB:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method static synthetic access$1500()Lcom/android/server/am/Pageboost$FileMapList;
    .locals 1

    sget-object v0, Lcom/android/server/am/Pageboost;->mZygote64FileMap:Lcom/android/server/am/Pageboost$FileMapList;

    return-object v0
.end method

.method static synthetic access$1700()V
    .locals 0

    invoke-static {}, Lcom/android/server/am/Pageboost;->DelayedInitPageboost()V

    return-void
.end method

.method static synthetic access$1800()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    return v0
.end method

.method static synthetic access$1900()Lcom/android/server/am/Pageboost$PageboostPredictor;
    .locals 1

    sget-object v0, Lcom/android/server/am/Pageboost;->mPredictor:Lcom/android/server/am/Pageboost$PageboostPredictor;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/Pageboost;->user_unlock_done:Z

    return v0
.end method

.method static synthetic access$2000(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Lcom/android/server/am/Pageboost;->GetPidFromPackageName(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/am/Pageboost;->user_unlock_done:Z

    return p0
.end method

.method static synthetic access$2100()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_VRAMDISK_ENABLED:Z

    return v0
.end method

.method static synthetic access$2200()Lcom/android/server/am/Pageboost$Vramdisk;
    .locals 1

    sget-object v0, Lcom/android/server/am/Pageboost;->mVramdisk:Lcom/android/server/am/Pageboost$Vramdisk;

    return-object v0
.end method

.method static synthetic access$2400()V
    .locals 0

    invoke-static {}, Lcom/android/server/am/Pageboost;->realUpdatePackages()V

    return-void
.end method

.method static synthetic access$2500(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/am/Pageboost;->addPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/am/Pageboost;->removePackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    sget-object v0, Lcom/android/server/am/Pageboost;->mAppDB:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method static synthetic access$2800()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300()Lcom/android/server/am/Pageboost$PageboostHandler;
    .locals 1

    sget-object v0, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    return-object v0
.end method

.method static synthetic access$400()Lcom/android/server/am/Pageboost$PageboostAppList;
    .locals 1

    sget-object v0, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    return-object v0
.end method

.method static synthetic access$500()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IGNORE_DRAM_SPECIFICATION:Z

    return v0
.end method

.method private static addPackage(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;

    invoke-direct {v0, p0}, Lcom/android/server/am/Pageboost$PageboostAppInfo;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mInstalled:I

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->setApkPath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    sget-object v2, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/am/Pageboost$PageboostAppList;->add(Lcom/android/server/am/Pageboost$PageboostAppInfo;Z)V

    sget-object v1, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add app to global @ runtime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static dumpInfo(Ljava/io/PrintWriter;)V
    .locals 2

    if-eqz p0, :cond_3

    sget-object v0, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v0, "== Pageboost dump start =="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "- Pageboost Configurations"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ignore dram spec: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/Pageboost;->PAGEBOOST_IGNORE_DRAM_SPECIFICATION:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "prefetch enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "prefetch level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/Pageboost$PageboostAppCapture;->access$2900()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "prefetch app count: 3"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mempreparation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/Pageboost$PageboostPredictor;->access$3000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "vramdisk enabled: (config) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/Pageboost;->PAGEBOOST_VRAMDISK_ENABLED:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " (decision_by_dram) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/Pageboost$Vramdisk;->access$000()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "vramdisk hotfile mgr enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/Pageboost$VramdiskHotFileManager;->access$3100()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "vramdisk preferred App mgr enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/Pageboost$VramdiskPreferredAppManager;->access$3200()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "- Pageboost AppLRU Info"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    invoke-virtual {v1}, Lcom/android/server/am/Pageboost$PageboostAppList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "- Pageboost Vramdisk Info"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_VRAMDISK_ENABLED:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/am/Pageboost$Vramdisk;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/am/Pageboost;->mVramdisk:Lcom/android/server/am/Pageboost$Vramdisk;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/am/Pageboost;->mVramdisk:Lcom/android/server/am/Pageboost$Vramdisk;

    invoke-virtual {v1}, Lcom/android/server/am/Pageboost$Vramdisk;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "disabled"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    :goto_0
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "- Action Log"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/Pageboost$VramdiskLogger;->print()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- Bigdata String: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/Pageboost$BigDataProxy;->access$3300()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "== pageboost dump end =="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method public static moveTaskToFront(Ljava/lang/String;)V
    .locals 4

    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveTaskToFront : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/android/server/am/Pageboost$PageboostHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-string/jumbo v2, "pkg"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "launchtime"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    sget-object v2, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/Pageboost$PageboostHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private static realUpdatePackages()V
    .locals 12

    sget-object v0, Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/android/server/am/Pageboost;->mPredictor:Lcom/android/server/am/Pageboost$PageboostPredictor;

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    sget-object v0, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "reinit global list"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    const/4 v2, 0x0

    sput-object v2, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    iget-object v2, v0, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/am/Pageboost$PageboostAppList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/Pageboost$PageboostAppInfo;

    sget-boolean v5, Lcom/android/server/am/Pageboost;->PAGEBOOST_VRAMDISK_ENABLED:Z

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/server/am/Pageboost$Vramdisk;->access$000()Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "remove from vramdisk : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/server/am/Pageboost;->mVramdisk:Lcom/android/server/am/Pageboost$Vramdisk;

    const-string/jumbo v6, "reinit_global_list"

    invoke-virtual {v5, v4, v6, v1}, Lcom/android/server/am/Pageboost$Vramdisk;->remove(Lcom/android/server/am/Pageboost$PageboostAppInfo;Ljava/lang/String;I)V

    :cond_1
    goto :goto_0

    :cond_2
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    :goto_1
    sget-object v0, Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v2, Lcom/android/server/am/Pageboost;->mAppDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v2}, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;->RestoreAppLRU(Landroid/database/sqlite/SQLiteDatabase;)Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_6

    sget-object v7, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pkg info : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/android/server/am/Pageboost$PageboostAppList;->getPageboostApp(Ljava/lang/String;)Lcom/android/server/am/Pageboost$PageboostAppInfo;

    move-result-object v7

    const/4 v8, 0x0

    if-nez v7, :cond_4

    new-instance v9, Lcom/android/server/am/Pageboost$PageboostAppInfo;

    iget-object v10, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v9, v10}, Lcom/android/server/am/Pageboost$PageboostAppInfo;-><init>(Ljava/lang/String;)V

    move-object v7, v9

    invoke-virtual {v2, v7, v8}, Lcom/android/server/am/Pageboost$PageboostAppList;->add(Lcom/android/server/am/Pageboost$PageboostAppInfo;Z)V

    sget-object v9, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "add app to global : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v9, :cond_5

    iget-object v9, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v7, v9}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->setApkPath(Ljava/lang/String;)V

    iput v1, v7, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mInstalled:I

    goto :goto_3

    :cond_4
    iget-object v9, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v9, :cond_5

    iget-object v9, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v7, v9}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->setApkPath(Ljava/lang/String;)V

    iput v1, v7, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mInstalled:I

    :cond_5
    :goto_3
    sget-boolean v9, Lcom/android/server/am/Pageboost;->PAGEBOOST_VRAMDISK_ENABLED:Z

    if-eqz v9, :cond_6

    invoke-static {}, Lcom/android/server/am/Pageboost$Vramdisk;->access$000()Z

    move-result v9

    if-eqz v9, :cond_6

    iget v9, v7, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mInstalled:I

    if-ne v9, v1, :cond_6

    iget v9, v7, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mInVramdisk:I

    if-lez v9, :cond_6

    sget-object v9, Lcom/android/server/am/Pageboost;->mVramdisk:Lcom/android/server/am/Pageboost$Vramdisk;

    if-eqz v9, :cond_6

    sget-object v9, Lcom/android/server/am/Pageboost;->mVramdisk:Lcom/android/server/am/Pageboost$Vramdisk;

    invoke-virtual {v9, v7, v8}, Lcom/android/server/am/Pageboost$Vramdisk;->add(Lcom/android/server/am/Pageboost$PageboostAppInfo;Z)Z

    :cond_6
    goto/16 :goto_2

    :cond_7
    invoke-virtual {v2}, Lcom/android/server/am/Pageboost$PageboostAppList;->removeNotInstalled()V

    sput-object v2, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    sget-boolean v1, Lcom/android/server/am/Pageboost;->PAGEBOOST_VRAMDISK_ENABLED:Z

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/android/server/am/Pageboost$Vramdisk;->access$000()Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Lcom/android/server/am/Pageboost;->mVramdisk:Lcom/android/server/am/Pageboost$Vramdisk;

    invoke-static {}, Lcom/android/server/am/Pageboost$VramdiskPreferredAppManager;->getPreferredApps()Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/am/Pageboost$Vramdisk;->applyPreferredAppList(Ljava/util/LinkedList;)V

    :cond_8
    return-void

    :cond_9
    :goto_4
    sget-object v0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "mContext or mPredictor is not initialized yet."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static removePackage(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    invoke-virtual {v0, p0}, Lcom/android/server/am/Pageboost$PageboostAppList;->removeFromName(Ljava/lang/String;)Lcom/android/server/am/Pageboost$PageboostAppInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/android/server/am/Pageboost;->mFileDB:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mNameTrimmed:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/server/am/Pageboost;->PAGEBOOST_VRAMDISK_ENABLED:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/server/am/Pageboost$Vramdisk;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/am/Pageboost;->mVramdisk:Lcom/android/server/am/Pageboost$Vramdisk;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/am/Pageboost;->mVramdisk:Lcom/android/server/am/Pageboost$Vramdisk;

    const-string/jumbo v2, "uninstalled"

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/Pageboost$Vramdisk;->remove(Lcom/android/server/am/Pageboost$PageboostAppInfo;Ljava/lang/String;I)V

    :cond_1
    return-void
.end method
