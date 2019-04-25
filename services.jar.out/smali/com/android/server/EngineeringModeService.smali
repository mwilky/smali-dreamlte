.class public final Lcom/android/server/EngineeringModeService;
.super Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub;
.source "EngineeringModeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/EngineeringModeService$EngineeringModeServiceSocket;,
        Lcom/android/server/EngineeringModeService$Packet;,
        Lcom/android/server/EngineeringModeService$MultipartUtility;,
        Lcom/android/server/EngineeringModeService$EngineeringModeClient;,
        Lcom/android/server/EngineeringModeService$EMSConnectionTask;,
        Lcom/android/server/EngineeringModeService$GeneralApplication;,
        Lcom/android/server/EngineeringModeService$SystemApplication;,
        Lcom/android/server/EngineeringModeService$PlatformApplication;,
        Lcom/android/server/EngineeringModeService$EMApplication;,
        Lcom/android/server/EngineeringModeService$EMSystemServer;,
        Lcom/android/server/EngineeringModeService$EMClient;,
        Lcom/android/server/EngineeringModeService$EMClientList;
    }
.end annotation


# static fields
.field private static final ANDROID_SYSTEM_SERVER:Ljava/lang/String; = "system_server"

.field private static final EM_CHECKED:I = 0x1

.field private static final EM_NOT_CHECKED:I = 0x0

.field private static final EM_STATE_PROP:Ljava/lang/String; = "security.em.tstate"

.field private static final EM_SYNC_SERVER_DATE_ACTION:Ljava/lang/String; = "com.android.server.em.EM_SYNC_SERVER_DATE"

.field private static final EM_SYNC_TOKEN_STATE:Ljava/lang/String; = "com.android.server.em.EM_SYNC_TOKEN_STATE"

.field private static final EM_SYNC_TOKEN_STATE_TIMER:Ljava/lang/String; = "com.android.server.em.EM_SYNC_TOKEN_STATE_TIMER"

.field private static final EM_TOKEN_STATE_DEFAULT_NOTIFY:Z = false

.field private static final EM_TOKEN_STATE_FORCE_NOTIFY:Z = true

.field private static final EM_VERSION10:I = 0xa

.field private static final EM_VERSION15:I = 0xf

.field private static final EM_VERSION20:I = 0x14

.field private static final EM_VERSION_PROP:Ljava/lang/String; = "ro.em.version"

.field private static final MODE_CUST_KERNEL:I = 0x3

.field private static final MODE_DEACTIVATE_REMOTE_LOCK:I = 0x8

.field private static final MODE_DEBUG_LOG:I = 0x2

.field private static final MODE_ENABLE_BIXBY_LOG:I = 0xf

.field private static final MODE_ENG_KERNEL:I = 0x0

.field private static final MODE_KEEP_USB_DEBUG_UNDER_KNOX:I = 0xe

.field private static final MODE_KEY_STRING:I = 0x6

.field private static final MODE_KNOX_TEST:I = 0x4

.field private static final MODE_KS_DISABLE:I = 0x7

.field private static final MODE_RCA_FRAME_BUF_RUN:I = 0x13

.field private static final MODE_ROLLBACK_SUW:I = 0x10

.field private static final MODE_RUN_KEY_STRING_APP:I = 0x9

.field private static final MODE_RUN_WASS_APP:I = 0x11

.field private static final MODE_SKIP_MTP_POPUP:I = 0xd

.field private static final MODE_SKIP_SUW:I = 0xc

.field private static final MODE_TEST_ENV:I = 0x1

.field private static final MODE_USB_DEBUG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "EngineeringModeService"

.field private static mContext:Landroid/content/Context;

.field private static mVersion:I


# instance fields
.field private mBootCompleted:Z

.field private mClient:Lcom/android/server/EngineeringModeService$EngineeringModeClient;

.field private mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

.field private mEMServerDate:Ljava/lang/String;

.field private mESS:Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;

.field private mImei:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private mModel:Ljava/lang/String;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mThreadSocket:Ljava/lang/Thread;

.field private mTokenState:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/android/server/EngineeringModeService;->checkEMVersion()V

    const-string v0, "EngineeringModeService"

    const-string/jumbo v1, "load engmode"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "engmode"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    sget v0, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v1, 0x14

    if-gt v1, v0, :cond_0

    const-string v0, "EngineeringModeService"

    const-string/jumbo v1, "load engmode2"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "engmode2"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/EngineeringModeService;->mBootCompleted:Z

    new-instance v1, Lcom/android/server/EngineeringModeService$1;

    invoke-direct {v1, p0}, Lcom/android/server/EngineeringModeService$1;-><init>(Lcom/android/server/EngineeringModeService;)V

    iput-object v1, p0, Lcom/android/server/EngineeringModeService;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string v1, "EngineeringModeService"

    const-string v2, "EngineeringModeService"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p1, Lcom/android/server/EngineeringModeService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/EngineeringModeService$EMClientList;

    invoke-direct {v1, p0}, Lcom/android/server/EngineeringModeService$EMClientList;-><init>(Lcom/android/server/EngineeringModeService;)V

    iput-object v1, p0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/EngineeringModeService;->mEMServerDate:Ljava/lang/String;

    new-instance v1, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;

    invoke-direct {v1}, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;-><init>()V

    iput-object v1, p0, Lcom/android/server/EngineeringModeService;->mESS:Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;

    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/EngineeringModeService;->mTokenState:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->registerClients()V

    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->registerForBroadcasts()V

    sget v1, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v2, 0xf

    if-gt v2, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/server/EngineeringModeService$EngineeringModeServiceSocket;

    invoke-direct {v4, p0}, Lcom/android/server/EngineeringModeService$EngineeringModeServiceSocket;-><init>(Lcom/android/server/EngineeringModeService;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v3, p0, Lcom/android/server/EngineeringModeService;->mThreadSocket:Ljava/lang/Thread;

    iget-object v3, p0, Lcom/android/server/EngineeringModeService;->mThreadSocket:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v3

    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    sget v3, Lcom/android/server/EngineeringModeService;->mVersion:I

    if-ne v3, v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->nativeIsTokenInstalled()I

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->nativeEM20SetTstate()I

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0, v0}, Lcom/android/server/EngineeringModeService;->updateTokenState(Z)V

    const-string v0, "EngineeringModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EM Service is started, state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/EngineeringModeService;->mTokenState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/EngineeringModeService;->mTokenState:Ljava/lang/String;

    const-string v3, "NM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->get_token_summary()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_1
    const-string v2, "-"

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :goto_3
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    :goto_4
    const-string v0, "EngineeringModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EM Service is started as version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$002(Lcom/android/server/EngineeringModeService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/EngineeringModeService;->mEMServerDate:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/server/EngineeringModeService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/EngineeringModeService;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$200()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/server/EngineeringModeService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/EngineeringModeService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->notifyTokenStatus()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/EngineeringModeService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    sget v0, Lcom/android/server/EngineeringModeService;->mVersion:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/EngineeringModeService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->nativeEM20Init()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/EngineeringModeService;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/EngineeringModeService;->getPackageName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/EngineeringModeService;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->set_persist_status()I

    move-result v0

    return v0
.end method

.method private byteArrayToHex([B)Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-byte v4, p1, v3

    const-string v5, "%02x "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    and-int/lit16 v7, v4, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static checkEMVersion()V
    .locals 3

    const-string v0, "EngineeringModeService"

    const-string v1, "Check EM Version"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "ro.em.version"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "20"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x14

    sput v1, Lcom/android/server/EngineeringModeService;->mVersion:I

    goto :goto_0

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_1

    const/16 v1, 0xf

    sput v1, Lcom/android/server/EngineeringModeService;->mVersion:I

    goto :goto_0

    :cond_1
    const/16 v1, 0xa

    sput v1, Lcom/android/server/EngineeringModeService;->mVersion:I

    :goto_0
    return-void
.end method

.method private checkTokenExist()Z
    .locals 3

    sget v0, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/4 v1, 0x1

    const/16 v2, 0xf

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/EngineeringModeService;->mTokenState:Ljava/lang/String;

    const-string v2, "NM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/EngineeringModeService;->mTokenState:Ljava/lang/String;

    const-string v2, "ES"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "EngineeringModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mTokenState is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/EngineeringModeService;->mTokenState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", pass"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method private getImei()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/android/server/EngineeringModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_0

    const-string v2, "EngineeringModeService"

    const-string v3, "Failed to get TelephonyManager"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getImei()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private getPackageName(I)Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "Unknown"

    const-string v2, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget v3, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v4, 0x14

    if-ne v3, v4, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/EngineeringModeService;->nativeEM20GetProcessName(I)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/EngineeringModeService;->nativeGetProcessName(I)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    :goto_0
    const-string/jumbo v3, "system_server"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "system_server"

    move-object v1, v3

    goto :goto_2

    :cond_1
    sget-object v3, Lcom/android/server/EngineeringModeService;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_2

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v1

    :cond_2
    :try_start_3
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v4, :cond_3

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-object v1

    :cond_3
    :try_start_5
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz v6, :cond_4

    iget v7, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v7, p1, :cond_4

    iget-object v5, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v1, v5

    goto :goto_2

    :cond_4
    goto :goto_1

    :cond_5
    :goto_2
    goto :goto_3

    :catch_0
    move-exception v3

    :try_start_6
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1
.end method

.method private static get_item_from_collection(ILcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;)[B
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;->getItemsNum()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p1, v2}, Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;->getCommonItem(I)Lcom/samsung/android/service/EngineeringMode/token/CommonItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/service/EngineeringMode/token/CommonItem;->getType()I

    move-result v4

    if-ne v4, p0, :cond_1

    invoke-virtual {v3}, Lcom/samsung/android/service/EngineeringMode/token/CommonItem;->getData()[B

    move-result-object v0

    return-object v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private get_token_summary()Ljava/lang/String;
    .locals 14

    const-string v0, "PARSING_ERROR"

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/EngineeringModeService;->getToken()[B

    move-result-object v1

    new-instance v2, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    sget-object v3, Lcom/android/server/EngineeringModeService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->getToken(I[B)Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->getIntegrityInfo()Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/EngineeringModeService;->get_item_from_collection(ILcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;)[B

    move-result-object v6

    if-eqz v6, :cond_2

    const-string v7, "X.509"

    invoke-static {v7}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v7

    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v7, v8}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v9

    check-cast v9, Ljava/security/cert/X509Certificate;

    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v10

    invoke-interface {v10}, Ljava/security/Principal;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "UID="

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v3

    const-string v12, "10"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v11, "MNFR"

    move-object v0, v11

    goto :goto_0

    :cond_0
    const-string v11, "OPER"

    move-object v0, v11

    goto :goto_0

    :cond_1
    const-string v11, "OPER"

    move-object v0, v11

    :cond_2
    :goto_0
    invoke-virtual {v4}, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->getTokenInfo()Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v8, v7}, Lcom/android/server/EngineeringModeService;->get_item_from_collection(ILcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;)[B

    move-result-object v8

    move-object v6, v8

    if-eqz v6, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v0, v8

    :cond_3
    invoke-virtual {v4}, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->getValidityInfo()Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/android/server/EngineeringModeService;->get_item_from_collection(ILcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;)[B

    move-result-object v3

    if-eqz v3, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ","

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    :cond_4
    invoke-virtual {v4}, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->getModeInfo()Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    move-result-object v6

    if-eqz v6, :cond_7

    const-string v9, ""

    invoke-virtual {v6}, Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;->getItemsNum()I

    move-result v10

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_6

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;->getCommonItem(I)Lcom/samsung/android/service/EngineeringMode/token/CommonItem;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/service/EngineeringMode/token/CommonItem;->getType()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v9, v12

    add-int/lit8 v12, v10, -0x1

    if-eq v11, v12, :cond_5

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v9, v12

    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v11

    :cond_7
    goto :goto_2

    :catch_0
    move-exception v1

    const-string v2, "EngineeringModeService"

    const-string v3, "Token parsing error"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "PARSING_ERROR"

    :goto_2
    return-object v0
.end method

.method private isEmApplication(II)Z
    .locals 5

    const/4 v0, 0x0

    const-string v1, ""

    invoke-direct {p0, p1}, Lcom/android/server/EngineeringModeService;->getPackageName(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, p2, v3}, Lcom/android/server/EngineeringModeService$EMClientList;->hasEmApplication(Ljava/lang/String;ILjava/lang/Integer;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "com.sec.android.app.emservice"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "EngineeringModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No Permission : PackageName = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "], UID = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method private isEmClient(III)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    invoke-direct {p0, p1}, Lcom/android/server/EngineeringModeService;->getPackageName(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, p2, v2}, Lcom/android/server/EngineeringModeService$EMClientList;->hasEmClient(Ljava/lang/String;ILjava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "EngineeringModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EMClient : ProcName = [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "EngineeringModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find client info in I-W : ProcName = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")], UID = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "], MODE = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private isEmClient(Ljava/lang/String;III)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    const-string v1, ""

    invoke-direct {p0, p2}, Lcom/android/server/EngineeringModeService;->getPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, p1

    :cond_0
    iget-object v2, p0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, p3, v3}, Lcom/android/server/EngineeringModeService$EMClientList;->hasEmClient(Ljava/lang/String;ILjava/lang/Integer;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "EngineeringModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EMClient : ProcName = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, p3, v3}, Lcom/android/server/EngineeringModeService$EMClientList;->hasEmClient(Ljava/lang/String;ILjava/lang/Integer;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "EngineeringModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EMClient : PacageName = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_0

    :cond_2
    const-string v2, "EngineeringModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot find client info in I-W : PackageName = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "],ProcName = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")],UID = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "], MODE = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private isEmService(II)Z
    .locals 5

    const/4 v0, 0x0

    const-string v1, ""

    invoke-direct {p0, p1}, Lcom/android/server/EngineeringModeService;->getPackageName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.security"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    return v3

    :cond_0
    const-string v2, "com.sec.android.app.emservice"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v3

    :cond_1
    iget-object v2, p0, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, p2, v3}, Lcom/android/server/EngineeringModeService$EMClientList;->hasEmService(Ljava/lang/String;ILjava/lang/Integer;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "EngineeringModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No Permission : PackageName = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "], UID = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method private isNetworkConnected()Z
    .locals 6

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/EngineeringModeService;->mBootCompleted:Z

    if-nez v1, :cond_0

    return v0

    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/server/EngineeringModeService;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/EngineeringModeService;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-nez v1, :cond_1

    const-string v2, "EngineeringModeService"

    const-string v3, "ConnectivityManager is NULL"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const-string v4, "EngineeringModeService"

    const-string/jumbo v5, "isNetworkConnected : false"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "EngineeringModeService"

    const-string v3, "Connectivity error occured"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return v0
.end method

.method private isOkToUseDevCert(ILjava/lang/String;)Z
    .locals 1

    const v0, -0xffff68

    if-ne p1, v0, :cond_0

    const-string v0, "com.sec.android.app.emservice"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private makeTimeReq()[B
    .locals 4

    iget-object v0, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "EngineeringModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makeTimeReq() is called EM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_NO_PERMISSION:[B

    monitor-exit v0

    return-object v1

    :cond_0
    sget v1, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v2, 0xf

    if-ge v1, v2, :cond_1

    const-string v1, "EngineeringModeService"

    const-string/jumbo v2, "makeTimeReq isn\'t supported in EM version 1.0"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    monitor-exit v0

    return-object v1

    :cond_1
    sget v1, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v2, 0x14

    if-ge v1, v2, :cond_2

    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->nativeEM15MakeTimeReq()[B

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_2
    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->nativeEM20MakeTimeReq()[B

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private native nativeEM15GetLastTokenStatus()[B
.end method

.method private native nativeEM15GetModes()[B
.end method

.method private native nativeEM15GetPriorityTime()[B
.end method

.method private native nativeEM15GetStatus(ILjava/lang/String;)I
.end method

.method private native nativeEM15InstallTokenForESS_V1(Ljava/lang/String;Ljava/lang/String;)[B
.end method

.method private native nativeEM15IsTokenInstalled(Ljava/lang/String;)I
.end method

.method private native nativeEM15MakeDelTokenForESS_V1(Ljava/lang/String;[BLjava/lang/String;)[B
.end method

.method private native nativeEM15MakeTimeReq()[B
.end method

.method private native nativeEM15MakeTokenReqForESS_V1(Ljava/lang/String;[BLjava/lang/String;)[B
.end method

.method private native nativeEM15SetPriorityTime([B)[B
.end method

.method private native nativeEM15UpdateTime([B)Ljava/lang/String;
.end method

.method private native nativeEM20GetLastTokenStatus()[B
.end method

.method private native nativeEM20GetModes()[B
.end method

.method private native nativeEM20GetPriorityTime()[B
.end method

.method private native nativeEM20GetProcessName(I)Ljava/lang/String;
.end method

.method private native nativeEM20GetStatus(ILjava/lang/String;ZILjava/lang/String;Ljava/lang/String;II)I
.end method

.method private native nativeEM20GetTUC(I)I
.end method

.method private native nativeEM20Init()V
.end method

.method private native nativeEM20InstallToken([B)I
.end method

.method private native nativeEM20InstallTokenForESS_V1(Ljava/lang/String;Ljava/lang/String;)[B
.end method

.method private native nativeEM20IsTokenInstalled(Ljava/lang/String;)I
.end method

.method private native nativeEM20MakeDelTokenForESS_V1(Ljava/lang/String;[BLjava/lang/String;)[B
.end method

.method private native nativeEM20MakeITLReq(Ljava/lang/String;Ljava/lang/String;)[B
.end method

.method private native nativeEM20MakeITLReqForESS_V1(Ljava/lang/String;[B)[B
.end method

.method private native nativeEM20MakeTimeReq()[B
.end method

.method private native nativeEM20MakeTokenReq(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)[B
.end method

.method private native nativeEM20MakeTokenReqForESS_V1(Ljava/lang/String;[BLjava/lang/String;)[B
.end method

.method private native nativeEM20ReadToken()[B
.end method

.method private native nativeEM20RecoveryITL([B)I
.end method

.method private native nativeEM20RecoveryITLForESS_V1(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeEM20RemoveToken()I
.end method

.method private native nativeEM20SendFuseCmd()I
.end method

.method private native nativeEM20SetPriorityTime([B)[B
.end method

.method private native nativeEM20SetTstate()I
.end method

.method private native nativeEM20UpdateTime([B)Ljava/lang/String;
.end method

.method private native nativeGetExpiryDate()Ljava/lang/String;
.end method

.method private native nativeGetId()[B
.end method

.method private native nativeGetNumOfModes()I
.end method

.method private native nativeGetProcessName(I)Ljava/lang/String;
.end method

.method private native nativeGetRequestMsg(Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;Ljava/lang/String;)[B
.end method

.method private native nativeGetStatus(I)I
.end method

.method private native nativeInstallToken([B)I
.end method

.method private native nativeIsTokenInstalled()I
.end method

.method private native nativeRemoveToken()I
.end method

.method private native nativeSendFuseCmd()I
.end method

.method private notifyTokenStatus()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.em.EM_SYNC_TOKEN_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "ts"

    iget-object v2, p0, Lcom/android/server/EngineeringModeService;->mTokenState:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/android/server/EngineeringModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private registerClients()V
    .locals 21

    move-object/from16 v1, p0

    :try_start_0
    new-instance v0, Lcom/android/server/EngineeringModeService$EMApplication;

    const-string v2, "com.sec.android.app.emservice"

    const/16 v3, 0x3e8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/EngineeringModeService$EMApplication;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;I)V

    iget-object v2, v1, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    invoke-virtual {v2, v0}, Lcom/android/server/EngineeringModeService$EMClientList;->add(Lcom/android/server/EngineeringModeService$EMClient;)V

    new-instance v2, Lcom/android/server/EngineeringModeService$EMApplication;

    const-string v4, "com.samsung.security"

    invoke-direct {v2, v1, v4, v3}, Lcom/android/server/EngineeringModeService$EMApplication;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;I)V

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/EngineeringModeService$EMApplication;->addMode(Ljava/lang/Integer;)V

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/server/EngineeringModeService$EMApplication;->addMode(Ljava/lang/Integer;)V

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/server/EngineeringModeService$EMApplication;->addMode(Ljava/lang/Integer;)V

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/server/EngineeringModeService$EMApplication;->addMode(Ljava/lang/Integer;)V

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/server/EngineeringModeService$EMApplication;->addMode(Ljava/lang/Integer;)V

    const/4 v6, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/server/EngineeringModeService$EMApplication;->addMode(Ljava/lang/Integer;)V

    const/4 v6, 0x7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/server/EngineeringModeService$EMApplication;->addMode(Ljava/lang/Integer;)V

    const/16 v6, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/android/server/EngineeringModeService$EMApplication;->addMode(Ljava/lang/Integer;)V

    const/16 v7, 0x9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/android/server/EngineeringModeService$EMApplication;->addMode(Ljava/lang/Integer;)V

    const/16 v8, 0xc

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/android/server/EngineeringModeService$EMApplication;->addMode(Ljava/lang/Integer;)V

    const/16 v9, 0xd

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/android/server/EngineeringModeService$EMApplication;->addMode(Ljava/lang/Integer;)V

    const/16 v10, 0xe

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/android/server/EngineeringModeService$EMApplication;->addMode(Ljava/lang/Integer;)V

    const/16 v11, 0xf

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/android/server/EngineeringModeService$EMApplication;->addMode(Ljava/lang/Integer;)V

    iget-object v12, v1, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    invoke-virtual {v12, v2}, Lcom/android/server/EngineeringModeService$EMClientList;->add(Lcom/android/server/EngineeringModeService$EMClient;)V

    new-instance v12, Lcom/android/server/EngineeringModeService$EMSystemServer;

    const-string/jumbo v13, "system_server"

    invoke-direct {v12, v1, v13, v3}, Lcom/android/server/EngineeringModeService$EMSystemServer;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;I)V

    iget-object v13, v1, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    invoke-virtual {v13, v12}, Lcom/android/server/EngineeringModeService$EMClientList;->add(Lcom/android/server/EngineeringModeService$EMClient;)V

    new-instance v13, Lcom/android/server/EngineeringModeService$SystemApplication;

    const-string v14, "com.samsung.android.MtpApplication"

    invoke-direct {v13, v1, v14, v3}, Lcom/android/server/EngineeringModeService$SystemApplication;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;I)V

    sget v14, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v15, 0x14

    if-ne v14, v15, :cond_0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v13, v9}, Lcom/android/server/EngineeringModeService$SystemApplication;->addMode(Ljava/lang/Integer;)V

    goto :goto_0

    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v13, v9}, Lcom/android/server/EngineeringModeService$SystemApplication;->addMode(Ljava/lang/Integer;)V

    :goto_0
    iget-object v9, v1, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    invoke-virtual {v9, v13}, Lcom/android/server/EngineeringModeService$EMClientList;->add(Lcom/android/server/EngineeringModeService$EMClient;)V

    new-instance v9, Lcom/android/server/EngineeringModeService$SystemApplication;

    const-string v14, "com.sec.bcservice"

    invoke-direct {v9, v1, v14, v3}, Lcom/android/server/EngineeringModeService$SystemApplication;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;I)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v9, v14}, Lcom/android/server/EngineeringModeService$SystemApplication;->addMode(Ljava/lang/Integer;)V

    iget-object v14, v1, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    invoke-virtual {v14, v9}, Lcom/android/server/EngineeringModeService$EMClientList;->add(Lcom/android/server/EngineeringModeService$EMClient;)V

    new-instance v14, Lcom/android/server/EngineeringModeService$PlatformApplication;

    const-string v6, "com.sec.keystringscreen"

    invoke-direct {v14, v1, v6}, Lcom/android/server/EngineeringModeService$PlatformApplication;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;)V

    move-object v6, v14

    sget v14, Lcom/android/server/EngineeringModeService;->mVersion:I

    if-ne v14, v15, :cond_1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/EngineeringModeService$PlatformApplication;->addMode(Ljava/lang/Integer;)V

    goto :goto_1

    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/EngineeringModeService$PlatformApplication;->addMode(Ljava/lang/Integer;)V

    :goto_1
    iget-object v7, v1, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    invoke-virtual {v7, v6}, Lcom/android/server/EngineeringModeService$EMClientList;->add(Lcom/android/server/EngineeringModeService$EMClient;)V

    new-instance v7, Lcom/android/server/EngineeringModeService$SystemApplication;

    const-string v14, "com.samsung.toolkit.ga_settingapplication"

    invoke-direct {v7, v1, v14, v3}, Lcom/android/server/EngineeringModeService$SystemApplication;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;I)V

    sget v14, Lcom/android/server/EngineeringModeService;->mVersion:I

    if-ne v14, v15, :cond_2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v7, v14}, Lcom/android/server/EngineeringModeService$SystemApplication;->addMode(Ljava/lang/Integer;)V

    goto :goto_2

    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v7, v14}, Lcom/android/server/EngineeringModeService$SystemApplication;->addMode(Ljava/lang/Integer;)V

    :goto_2
    iget-object v14, v1, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    invoke-virtual {v14, v7}, Lcom/android/server/EngineeringModeService$EMClientList;->add(Lcom/android/server/EngineeringModeService$EMClient;)V

    new-instance v14, Lcom/android/server/EngineeringModeService$SystemApplication;

    const-string v11, "com.sec.android.app.servicemodeapp"

    invoke-direct {v14, v1, v11, v3}, Lcom/android/server/EngineeringModeService$SystemApplication;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;I)V

    move-object v11, v14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v11, v5}, Lcom/android/server/EngineeringModeService$SystemApplication;->addMode(Ljava/lang/Integer;)V

    iget-object v5, v1, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    invoke-virtual {v5, v11}, Lcom/android/server/EngineeringModeService$EMClientList;->add(Lcom/android/server/EngineeringModeService$EMClient;)V

    new-instance v5, Lcom/android/server/EngineeringModeService$SystemApplication;

    const-string v14, "com.sdet.fotaagent"

    invoke-direct {v5, v1, v14, v3}, Lcom/android/server/EngineeringModeService$SystemApplication;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;I)V

    sget v14, Lcom/android/server/EngineeringModeService;->mVersion:I

    if-ne v14, v15, :cond_3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v5, v14}, Lcom/android/server/EngineeringModeService$SystemApplication;->addMode(Ljava/lang/Integer;)V

    goto :goto_3

    :cond_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v5, v14}, Lcom/android/server/EngineeringModeService$SystemApplication;->addMode(Ljava/lang/Integer;)V

    :goto_3
    iget-object v14, v1, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    invoke-virtual {v14, v5}, Lcom/android/server/EngineeringModeService$EMClientList;->add(Lcom/android/server/EngineeringModeService$EMClient;)V

    new-instance v14, Lcom/android/server/EngineeringModeService$SystemApplication;

    const-string v8, "com.samsung.knox.kss"

    invoke-direct {v14, v1, v8, v3}, Lcom/android/server/EngineeringModeService$SystemApplication;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;I)V

    move-object v8, v14

    sget v14, Lcom/android/server/EngineeringModeService;->mVersion:I

    if-ne v14, v15, :cond_4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v8, v14}, Lcom/android/server/EngineeringModeService$SystemApplication;->addMode(Ljava/lang/Integer;)V

    goto :goto_4

    :cond_4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v8, v14}, Lcom/android/server/EngineeringModeService$SystemApplication;->addMode(Ljava/lang/Integer;)V

    :goto_4
    iget-object v14, v1, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    invoke-virtual {v14, v8}, Lcom/android/server/EngineeringModeService$EMClientList;->add(Lcom/android/server/EngineeringModeService$EMClient;)V

    new-instance v14, Lcom/android/server/EngineeringModeService$PlatformApplication;

    const-string v3, "com.samsung.knox.securefolder"

    invoke-direct {v14, v1, v3}, Lcom/android/server/EngineeringModeService$PlatformApplication;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;)V

    move-object v3, v14

    sget v14, Lcom/android/server/EngineeringModeService;->mVersion:I

    if-ne v14, v15, :cond_5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/android/server/EngineeringModeService$PlatformApplication;->addMode(Ljava/lang/Integer;)V

    goto :goto_5

    :cond_5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/android/server/EngineeringModeService$PlatformApplication;->addMode(Ljava/lang/Integer;)V

    :goto_5
    iget-object v10, v1, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    invoke-virtual {v10, v3}, Lcom/android/server/EngineeringModeService$EMClientList;->add(Lcom/android/server/EngineeringModeService$EMClient;)V

    new-instance v10, Lcom/android/server/EngineeringModeService$PlatformApplication;

    const-string v14, "com.samsung.android.bixby.agent"

    invoke-direct {v10, v1, v14}, Lcom/android/server/EngineeringModeService$PlatformApplication;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;)V

    sget v14, Lcom/android/server/EngineeringModeService;->mVersion:I

    if-ne v14, v15, :cond_6

    const/16 v14, 0xf

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v14}, Lcom/android/server/EngineeringModeService$PlatformApplication;->addMode(Ljava/lang/Integer;)V

    goto :goto_6

    :cond_6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v14}, Lcom/android/server/EngineeringModeService$PlatformApplication;->addMode(Ljava/lang/Integer;)V

    :goto_6
    iget-object v14, v1, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    invoke-virtual {v14, v10}, Lcom/android/server/EngineeringModeService$EMClientList;->add(Lcom/android/server/EngineeringModeService$EMClient;)V

    new-instance v14, Lcom/android/server/EngineeringModeService$SystemApplication;

    const-string v15, "com.sec.factory"

    const/16 v4, 0x3e8

    invoke-direct {v14, v1, v15, v4}, Lcom/android/server/EngineeringModeService$SystemApplication;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;I)V

    move-object v4, v14

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v4, v15}, Lcom/android/server/EngineeringModeService$SystemApplication;->addMode(Ljava/lang/Integer;)V

    iget-object v14, v1, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    invoke-virtual {v14, v4}, Lcom/android/server/EngineeringModeService$EMClientList;->add(Lcom/android/server/EngineeringModeService$EMClient;)V

    new-instance v14, Lcom/android/server/EngineeringModeService$SystemApplication;

    const-string v15, "com.sec.android.sherlocksetting"

    move-object/from16 v16, v0

    const/16 v0, 0x3e8

    invoke-direct {v14, v1, v15, v0}, Lcom/android/server/EngineeringModeService$SystemApplication;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;I)V

    move-object v0, v14

    sget v14, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v15, 0x14

    if-ne v14, v15, :cond_7

    const/16 v14, 0xc

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v0, v14}, Lcom/android/server/EngineeringModeService$SystemApplication;->addMode(Ljava/lang/Integer;)V

    goto :goto_7

    :cond_7
    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v0, v14}, Lcom/android/server/EngineeringModeService$SystemApplication;->addMode(Ljava/lang/Integer;)V

    :goto_7
    iget-object v14, v1, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    invoke-virtual {v14, v0}, Lcom/android/server/EngineeringModeService$EMClientList;->add(Lcom/android/server/EngineeringModeService$EMClient;)V

    new-instance v14, Lcom/android/server/EngineeringModeService$PlatformApplication;

    const-string v15, "com.sec.veg.wass"

    invoke-direct {v14, v1, v15}, Lcom/android/server/EngineeringModeService$PlatformApplication;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;)V

    const/16 v15, 0x11

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/server/EngineeringModeService$PlatformApplication;->addMode(Ljava/lang/Integer;)V

    iget-object v15, v1, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    invoke-virtual {v15, v14}, Lcom/android/server/EngineeringModeService$EMClientList;->add(Lcom/android/server/EngineeringModeService$EMClient;)V

    new-instance v15, Lcom/android/server/EngineeringModeService$SystemApplication;

    move-object/from16 v17, v0

    const-string v0, "com.samsung.oobsimulator"

    move-object/from16 v18, v2

    const/16 v2, 0x3e8

    invoke-direct {v15, v1, v0, v2}, Lcom/android/server/EngineeringModeService$SystemApplication;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;I)V

    move-object v0, v15

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/EngineeringModeService$SystemApplication;->addMode(Ljava/lang/Integer;)V

    iget-object v2, v1, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    invoke-virtual {v2, v0}, Lcom/android/server/EngineeringModeService$EMClientList;->add(Lcom/android/server/EngineeringModeService$EMClient;)V

    new-instance v2, Lcom/android/server/EngineeringModeService$SystemApplication;

    const-string v15, "com.samsung.android.rlc"

    move-object/from16 v19, v0

    const/16 v0, 0x3e8

    invoke-direct {v2, v1, v15, v0}, Lcom/android/server/EngineeringModeService$SystemApplication;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;I)V

    move-object v0, v2

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v0, v15}, Lcom/android/server/EngineeringModeService$SystemApplication;->addMode(Ljava/lang/Integer;)V

    iget-object v2, v1, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    invoke-virtual {v2, v0}, Lcom/android/server/EngineeringModeService$EMClientList;->add(Lcom/android/server/EngineeringModeService$EMClient;)V

    new-instance v2, Lcom/android/server/EngineeringModeService$PlatformApplication;

    const-string v15, "com.samsung.rcaframebuffer"

    invoke-direct {v2, v1, v15}, Lcom/android/server/EngineeringModeService$PlatformApplication;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;)V

    const/16 v15, 0x13

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v2, v15}, Lcom/android/server/EngineeringModeService$PlatformApplication;->addMode(Ljava/lang/Integer;)V

    iget-object v15, v1, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    invoke-virtual {v15, v2}, Lcom/android/server/EngineeringModeService$EMClientList;->add(Lcom/android/server/EngineeringModeService$EMClient;)V

    new-instance v15, Lcom/android/server/EngineeringModeService$PlatformApplication;

    move-object/from16 v20, v0

    const-string v0, "com.samsung.android.kgclient"

    invoke-direct {v15, v1, v0}, Lcom/android/server/EngineeringModeService$PlatformApplication;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;)V

    move-object v0, v15

    const/16 v15, 0x8

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v0, v15}, Lcom/android/server/EngineeringModeService$PlatformApplication;->addMode(Ljava/lang/Integer;)V

    iget-object v15, v1, Lcom/android/server/EngineeringModeService;->mEMCList:Lcom/android/server/EngineeringModeService$EMClientList;

    invoke-virtual {v15, v0}, Lcom/android/server/EngineeringModeService$EMClientList;->add(Lcom/android/server/EngineeringModeService$EMClient;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_8
    return-void
.end method

.method private registerForBroadcasts()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.android.server.em.EM_SYNC_SERVER_DATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.server.em.EM_SYNC_TOKEN_STATE_TIMER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/EngineeringModeService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/EngineeringModeService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private set_persist_status()I
    .locals 8

    iget-object v0, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "EngineeringModeService"

    const-string v2, "Called set persist status"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/EngineeringModeService;->getStringModes()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v3, "EngineeringModeService"

    const-string v4, "Failed to get modes"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return v2

    :cond_0
    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x5b634015

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v4, v5, :cond_4

    const v5, -0x22286b4b    # -1.94178E18f

    if-eq v4, v5, :cond_3

    const v5, 0x45cab334

    if-eq v4, v5, :cond_2

    const v5, 0x7a5fded7

    if-eq v4, v5, :cond_1

    goto :goto_0

    :cond_1
    const-string v4, "ERROR_TOKEN_NOT_INSATLLED"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v3, 0x3

    goto :goto_0

    :cond_2
    const-string v4, "ERROR_INTERNAL"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v3, v2

    goto :goto_0

    :cond_3
    const-string v4, "ERROR_EM_SERVICE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v3, v7

    goto :goto_0

    :cond_4
    const-string v4, "ERROR_NOT_SUPPORTED"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v3, v6

    :cond_5
    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NOK,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    :goto_1
    const-string v3, "DEV"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "OK,DEV"

    move-object v1, v3

    :cond_6
    const-string v3, "EMT"

    invoke-static {v3}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->getInstance(Ljava/lang/String;)Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->write(I[B)I

    move-result v4

    if-eqz v4, :cond_7

    const-string v5, "EngineeringModeService"

    const-string v6, "Failed to set persist status at VK"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return v2

    :cond_7
    monitor-exit v0

    return v7

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private showToast(Ljava/lang/String;I)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/server/EngineeringModeService$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/EngineeringModeService$2;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private updateTime([B)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "EngineeringModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateTimeReq() is called EM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return-object v2

    :cond_0
    sget v1, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v3, 0xf

    if-ge v1, v3, :cond_1

    const-string v1, "EngineeringModeService"

    const-string/jumbo v3, "updateTime isn\'t supported in EM version 1.0"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-object v2

    :cond_1
    const-string v1, ""

    sget v2, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v3, 0x14

    if-lt v2, v3, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/EngineeringModeService;->nativeEM20UpdateTime([B)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/EngineeringModeService;->nativeEM15UpdateTime([B)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateTokenState(Z)V
    .locals 3

    const-string/jumbo v0, "security.em.tstate"

    const-string v1, "ES"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/EngineeringModeService;->mTokenState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "EngineeringModeService"

    const-string v2, "TokenState isn\'t updated"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/android/server/EngineeringModeService;->mTokenState:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/server/EngineeringModeService;->mBootCompleted:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->notifyTokenStatus()V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public getExpiryDate()Ljava/lang/String;
    .locals 3

    const-string v0, "EngineeringModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getExpiryDate() is called. EM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget v0, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v2, 0x14

    if-lt v0, v2, :cond_1

    const-string v0, "EngineeringModeService"

    const-string/jumbo v2, "getID is only supported in EM version 1"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->nativeGetExpiryDate()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getID()[B
    .locals 4

    iget-object v0, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "EngineeringModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getID() is called. EM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_NO_PERMISSION:[B

    monitor-exit v0

    return-object v1

    :cond_0
    sget v1, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v2, 0x14

    if-lt v1, v2, :cond_1

    const-string v1, "EngineeringModeService"

    const-string/jumbo v2, "getID is only supported in EM version 1"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    monitor-exit v0

    return-object v1

    :cond_1
    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->nativeGetId()[B

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLastTokenStatus()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "EngineeringModeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getLastTokenStatus() is called. EM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "ERROR_EM_SERVICE"

    monitor-exit v0

    return-object v3

    :cond_0
    sget v3, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v4, 0xf

    if-ge v3, v4, :cond_1

    const-string v3, "EngineeringModeService"

    const-string/jumbo v4, "getLastTokenStatus isn\'t be supported under EM version 15."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "ERROR_NOT_SUPPORTED"

    monitor-exit v0

    return-object v3

    :cond_1
    sget v3, Lcom/android/server/EngineeringModeService;->mVersion:I

    if-ne v3, v4, :cond_2

    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->nativeEM15GetLastTokenStatus()[B

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    :cond_2
    sget v3, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v4, 0x14

    if-lt v3, v4, :cond_4

    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->nativeEM20GetLastTokenStatus()[B

    move-result-object v3

    move-object v2, v3

    :goto_0
    if-nez v2, :cond_3

    const-string v3, "EngineeringModeService"

    const-string v4, "Return value is null. please check error"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "ERROR_INTERNAL"

    monitor-exit v0

    return-object v3

    :cond_3
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    monitor-exit v0

    return-object v1

    :cond_4
    const-string v3, "EngineeringModeService"

    const-string v4, "Invalid version"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "ERROR_NOT_SUPPORTED"

    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getModes()[I
    .locals 8

    iget-object v0, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "EngineeringModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getModes() is called. EM"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/EngineeringModeService;->getStringModes()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x5b634015

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eq v4, v5, :cond_3

    const v5, -0x22286b4b    # -1.94178E18f

    if-eq v4, v5, :cond_2

    const v5, 0x45cab334

    if-eq v4, v5, :cond_1

    const v5, 0x7a5fded7

    if-eq v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, "ERROR_TOKEN_NOT_INSATLLED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v3, 0x3

    goto :goto_0

    :cond_1
    const-string v4, "ERROR_INTERNAL"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v3, v7

    goto :goto_0

    :cond_2
    const-string v4, "ERROR_EM_SERVICE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const-string v4, "ERROR_NOT_SUPPORTED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_4

    move v3, v6

    :cond_4
    :goto_0
    packed-switch v3, :pswitch_data_0

    :try_start_1
    const-string v3, "OK"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :pswitch_0
    :try_start_2
    sget-object v3, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORINTARR_NOT_INSTALLED:[I

    monitor-exit v0

    return-object v3

    :pswitch_1
    sget-object v3, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORINTARR_NOT_SUPPORTED:[I

    monitor-exit v0

    return-object v3

    :pswitch_2
    sget-object v3, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORINTARR_EM_SERVICE:[I

    monitor-exit v0

    return-object v3

    :pswitch_3
    sget-object v3, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORINTARR_INTERNAL:[I

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v3

    :goto_1
    :try_start_3
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v6

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    new-array v4, v4, [I

    move-object v1, v4

    nop

    :goto_2
    move v4, v7

    array-length v5, v3

    if-ge v4, v5, :cond_5

    aget-object v5, v3, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v1, v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v7, v4, 0x1

    goto :goto_2

    :cond_5
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-object v1

    :cond_6
    :try_start_5
    const-string v3, "EngineeringModeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get modes["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v3

    :try_start_6
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    const/4 v3, 0x0

    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getNumOfModes()I
    .locals 4

    iget-object v0, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "EngineeringModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getNumOfModes() is called. EM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, -0x514

    monitor-exit v0

    return v1

    :cond_0
    sget v1, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v2, 0x14

    if-ge v1, v2, :cond_1

    const-string v1, "EngineeringModeService"

    const-string/jumbo v2, "getNumOfModes is only supported in EM version 1"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x3e8

    monitor-exit v0

    return v1

    :cond_1
    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->nativeGetNumOfModes()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPriorityTime()[B
    .locals 4

    iget-object v0, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "EngineeringModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getPriorityTime() is called. EM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_NO_PERMISSION:[B

    monitor-exit v0

    return-object v1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->checkTokenExist()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "EngineeringModeService"

    const-string v2, "Token isn\'t installed"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_NOT_INSATALLED:[B

    monitor-exit v0

    return-object v1

    :cond_1
    sget v1, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v2, 0xf

    if-ge v1, v2, :cond_2

    const-string v1, "EngineeringModeService"

    const-string/jumbo v2, "getPriorityTime isn\'t supported EM version 1"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_NOT_SUPPORTED:[B

    goto :goto_0

    :cond_2
    sget v1, Lcom/android/server/EngineeringModeService;->mVersion:I

    if-ne v1, v2, :cond_3

    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->nativeEM15GetPriorityTime()[B

    move-result-object v1

    :goto_0
    goto :goto_1

    :cond_3
    sget v1, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v2, 0x14

    if-ne v1, v2, :cond_4

    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->nativeEM20GetPriorityTime()[B

    move-result-object v1

    goto :goto_0

    :cond_4
    const-string v1, "EngineeringModeService"

    const-string v2, "Invalid version"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    :goto_1
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/EngineeringModeService;->updateTokenState(Z)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRequestMsg(Ljava/lang/String;Ljava/lang/String;[BI)[B
    .locals 9

    iget-object v0, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "EngineeringModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getRequestMsg() is called. EM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_NO_PERMISSION:[B

    monitor-exit v0

    return-object v1

    :cond_0
    sget v1, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v2, 0x14

    if-lt v1, v2, :cond_1

    const-string v1, "EngineeringModeService"

    const-string/jumbo v2, "getRequestMsg(SSBI) is only supported in EM version 1"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    monitor-exit v0

    return-object v1

    :cond_1
    sget-object v1, Lcom/android/server/EngineeringModeService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/EngineeringModeDeviceInfo;->getInstance(Landroid/content/Context;)Lcom/android/server/EngineeringModeDeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/EngineeringModeDeviceInfo;->getModelName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/EngineeringModeService;->mModel:Ljava/lang/String;

    sget-object v1, Lcom/android/server/EngineeringModeService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/EngineeringModeDeviceInfo;->getInstance(Landroid/content/Context;)Lcom/android/server/EngineeringModeDeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/EngineeringModeDeviceInfo;->getImei()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/EngineeringModeService;->mImei:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/EngineeringModeService;->mModel:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/EngineeringModeService;->mImei:Ljava/lang/String;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/server/EngineeringModeService;->nativeGetRequestMsg(Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getServerTime()J
    .locals 14

    iget-object v0, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, ""

    const-string v2, "EngineeringModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getServerTime() is called. EM"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v2, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v3, 0xf

    const-wide/16 v4, -0x3e8

    if-ge v2, v3, :cond_0

    const-string v2, "EngineeringModeService"

    const-string/jumbo v3, "getServerTime is not supported in EM version 1.0 and 1.5"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-wide v4

    :cond_0
    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->isNetworkConnected()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "EngineeringModeService"

    const-string v3, "Network isn\'t connected, skip getting server time"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-wide v4

    :cond_1
    sget v2, Lcom/android/server/EngineeringModeService;->mVersion:I

    if-gt v3, v2, :cond_2

    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->checkTokenExist()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "EngineeringModeService"

    const-string/jumbo v3, "skip getting server time"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-wide v4

    :cond_2
    iget-object v2, p0, Lcom/android/server/EngineeringModeService;->mEMServerDate:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_8

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->makeTimeReq()[B

    move-result-object v6

    move-object v2, v6

    if-nez v2, :cond_3

    const-string v3, "EngineeringModeService"

    const-string v6, "Failed to make request time message"

    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-wide v4

    :cond_3
    new-instance v6, Lcom/android/server/EngineeringModeService$EMSConnectionTask;

    invoke-direct {v6, p0, v2}, Lcom/android/server/EngineeringModeService$EMSConnectionTask;-><init>(Lcom/android/server/EngineeringModeService;[B)V

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/server/EngineeringModeService$EMSConnectionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    :cond_4
    invoke-virtual {v6}, Lcom/android/server/EngineeringModeService$EMSConnectionTask;->getResponseBody()[B

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v9, :cond_5

    const-wide/16 v10, 0x64

    :try_start_1
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v10

    goto :goto_0

    :goto_1
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v7

    const-wide/16 v12, 0x1b58

    cmp-long v10, v10, v12

    if-ltz v10, :cond_4

    goto :goto_2

    :cond_5
    const-string v10, "EngineeringModeService"

    const-string/jumbo v11, "responseBody isn\'t null"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_2
    if-nez v9, :cond_6

    const-string v3, "EngineeringModeService"

    const-string v10, "No valid response from EMS server!"

    invoke-static {v3, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-wide v4

    :cond_6
    invoke-direct {p0, v9}, Lcom/android/server/EngineeringModeService;->updateTime([B)Ljava/lang/String;

    move-result-object v10

    move-object v1, v10

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_7

    const-string v10, "EngineeringModeService"

    const-string v11, "Failed to verify server time"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v3, p0, Lcom/android/server/EngineeringModeService;->mEMServerDate:Ljava/lang/String;

    monitor-exit v0

    return-wide v4

    :cond_7
    iput-object v1, p0, Lcom/android/server/EngineeringModeService;->mEMServerDate:Ljava/lang/String;

    :cond_8
    iget-object v2, p0, Lcom/android/server/EngineeringModeService;->mEMServerDate:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_9

    :try_start_3
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "yyyyMMdd"

    invoke-direct {v2, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/EngineeringModeService;->mEMServerDate:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    const-string v9, "EngineeringModeService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "EM Server time ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/server/EngineeringModeService;->mEMServerDate:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v0

    return-wide v7

    :catch_1
    move-exception v2

    const-string v6, "EngineeringModeService"

    const-string v7, "Failed to parse server date"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v3, p0, Lcom/android/server/EngineeringModeService;->mEMServerDate:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    :cond_9
    monitor-exit v0

    return-wide v4

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public getStatus(I)I
    .locals 14

    iget-object v0, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/EngineeringModeService;->updateTokenState(Z)V

    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->checkTokenExist()Z

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v0

    return v1

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {p0, v2, v3, p1}, Lcom/android/server/EngineeringModeService;->isEmClient(III)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const/16 v1, -0x514

    monitor-exit v0

    return v1

    :cond_1
    const-string v3, "EngineeringModeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getStatus() is called. ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " / mode["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]) EM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/EngineeringModeService;->getServerTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gez v3, :cond_2

    const-string v3, "EngineeringModeService"

    const-string/jumbo v4, "getStatus(i) Failed to get EM Server time. Use current value"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget v3, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v4, 0x14

    if-ge v3, v4, :cond_4

    sget v3, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v4, 0xf

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/server/EngineeringModeService;->mEMServerDate:Ljava/lang/String;

    invoke-direct {p0, p1, v3}, Lcom/android/server/EngineeringModeService;->nativeEM15GetStatus(ILjava/lang/String;)I

    move-result v3

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/EngineeringModeService;->nativeGetStatus(I)I

    move-result v3

    :goto_0
    goto :goto_1

    :cond_4
    sget v3, Lcom/android/server/EngineeringModeService;->mVersion:I

    if-ne v3, v4, :cond_8

    iget-object v7, p0, Lcom/android/server/EngineeringModeService;->mEMServerDate:Ljava/lang/String;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/EngineeringModeService;->isEmApplication(II)Z

    move-result v8

    const/4 v9, 0x1

    const-string v10, "Unknown"

    const-string v11, "Unknown"

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v5, p0

    move v6, p1

    invoke-direct/range {v5 .. v13}, Lcom/android/server/EngineeringModeService;->nativeEM20GetStatus(ILjava/lang/String;ZILjava/lang/String;Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    const/16 v4, -0x5dc

    if-ne v3, v4, :cond_6

    const-string v4, "Your EM token can\'t be used temporary. Please connect network and try again"

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/server/EngineeringModeService;->showToast(Ljava/lang/String;I)V

    const/4 v3, 0x0

    goto :goto_1

    :cond_6
    invoke-direct {p0, v3, v2}, Lcom/android/server/EngineeringModeService;->isOkToUseDevCert(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const v3, -0xffff68

    goto :goto_1

    :cond_7
    const/4 v3, 0x0

    goto :goto_1

    :cond_8
    const-string v3, "EngineeringModeService"

    const-string v4, "Invalid version"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, -0x3e8

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/server/EngineeringModeService;->updateTokenState(Z)V

    monitor-exit v0

    return v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getStatus(ILjava/lang/String;)I
    .locals 16

    move-object/from16 v10, p0

    move/from16 v11, p1

    move-object/from16 v12, p2

    iget-object v13, v10, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    monitor-enter v13

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "EngineeringModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getStatus() is called. EM"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    invoke-direct {v10, v14}, Lcom/android/server/EngineeringModeService;->updateTokenState(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/EngineeringModeService;->checkTokenExist()Z

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v13

    return v14

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {v10, v12, v2, v3, v11}, Lcom/android/server/EngineeringModeService;->isEmClient(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v2

    move-object v15, v2

    const/16 v1, 0x14

    if-nez v15, :cond_1

    sget v2, Lcom/android/server/EngineeringModeService;->mVersion:I

    if-ge v2, v1, :cond_2

    const-string v1, "EngineeringModeService"

    const-string v2, "No Permission"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x514

    monitor-exit v13

    return v1

    :cond_1
    const/4 v0, 0x1

    :cond_2
    iget-object v2, v10, Lcom/android/server/EngineeringModeService;->mClient:Lcom/android/server/EngineeringModeService$EngineeringModeClient;

    if-nez v2, :cond_3

    new-instance v2, Lcom/android/server/EngineeringModeService$EngineeringModeClient;

    invoke-direct {v2, v10, v12}, Lcom/android/server/EngineeringModeService$EngineeringModeClient;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;)V

    iput-object v2, v10, Lcom/android/server/EngineeringModeService;->mClient:Lcom/android/server/EngineeringModeService$EngineeringModeClient;

    goto :goto_0

    :cond_3
    iget-object v2, v10, Lcom/android/server/EngineeringModeService;->mClient:Lcom/android/server/EngineeringModeService$EngineeringModeClient;

    invoke-virtual {v2, v12}, Lcom/android/server/EngineeringModeService$EngineeringModeClient;->updateClientInfo(Ljava/lang/String;)V

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/EngineeringModeService;->getServerTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_4

    const-string v2, "EngineeringModeService"

    const-string/jumbo v3, "getStatus(iS) Failed to get EM Server time. Use current value"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    sget v2, Lcom/android/server/EngineeringModeService;->mVersion:I

    if-ge v2, v1, :cond_6

    sget v1, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v2, 0xf

    if-ne v1, v2, :cond_5

    iget-object v1, v10, Lcom/android/server/EngineeringModeService;->mEMServerDate:Ljava/lang/String;

    invoke-direct {v10, v11, v1}, Lcom/android/server/EngineeringModeService;->nativeEM15GetStatus(ILjava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_5
    invoke-direct/range {p0 .. p1}, Lcom/android/server/EngineeringModeService;->nativeGetStatus(I)I

    move-result v1

    :goto_1
    goto/16 :goto_3

    :cond_6
    sget v2, Lcom/android/server/EngineeringModeService;->mVersion:I

    if-ne v2, v1, :cond_b

    iget-object v3, v10, Lcom/android/server/EngineeringModeService;->mEMServerDate:Ljava/lang/String;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v10, v1, v2}, Lcom/android/server/EngineeringModeService;->isEmApplication(II)Z

    move-result v4

    iget-object v1, v10, Lcom/android/server/EngineeringModeService;->mClient:Lcom/android/server/EngineeringModeService$EngineeringModeClient;

    invoke-virtual {v1}, Lcom/android/server/EngineeringModeService$EngineeringModeClient;->getProcName()Ljava/lang/String;

    move-result-object v6

    iget-object v1, v10, Lcom/android/server/EngineeringModeService;->mClient:Lcom/android/server/EngineeringModeService$EngineeringModeClient;

    invoke-virtual {v1}, Lcom/android/server/EngineeringModeService$EngineeringModeClient;->getPkgName()Ljava/lang/String;

    move-result-object v7

    iget-object v1, v10, Lcom/android/server/EngineeringModeService;->mClient:Lcom/android/server/EngineeringModeService$EngineeringModeClient;

    invoke-virtual {v1}, Lcom/android/server/EngineeringModeService$EngineeringModeClient;->getUid()I

    move-result v8

    iget-object v1, v10, Lcom/android/server/EngineeringModeService;->mClient:Lcom/android/server/EngineeringModeService$EngineeringModeClient;

    invoke-virtual {v1}, Lcom/android/server/EngineeringModeService$EngineeringModeClient;->getSignature()I

    move-result v9

    move-object v1, v10

    move v2, v11

    move v5, v0

    invoke-direct/range {v1 .. v9}, Lcom/android/server/EngineeringModeService;->nativeEM20GetStatus(ILjava/lang/String;ZILjava/lang/String;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_7

    const-string v2, "EngineeringModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getStatus() Mode#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "is vaild"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_3

    :cond_7
    iget-object v2, v10, Lcom/android/server/EngineeringModeService;->mClient:Lcom/android/server/EngineeringModeService$EngineeringModeClient;

    invoke-virtual {v2}, Lcom/android/server/EngineeringModeService$EngineeringModeClient;->getProcName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v1, v2}, Lcom/android/server/EngineeringModeService;->isOkToUseDevCert(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, v10, Lcom/android/server/EngineeringModeService;->mClient:Lcom/android/server/EngineeringModeService$EngineeringModeClient;

    invoke-virtual {v2}, Lcom/android/server/EngineeringModeService$EngineeringModeClient;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v1, v2}, Lcom/android/server/EngineeringModeService;->isOkToUseDevCert(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_2

    :cond_8
    const/4 v1, 0x0

    const v2, -0xffffffc

    if-ne v1, v2, :cond_9

    const-string v2, "EngineeringModeService"

    const-string v3, "No Permission"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_9
    const/16 v2, -0x5dc

    if-ne v1, v2, :cond_c

    const-string v2, "Your EM token can\'t be used temporary. Please connect network and try again"

    const/4 v3, 0x1

    invoke-direct {v10, v2, v3}, Lcom/android/server/EngineeringModeService;->showToast(Ljava/lang/String;I)V

    goto :goto_3

    :cond_a
    :goto_2
    const v1, -0xffff68

    goto :goto_3

    :cond_b
    const-string v1, "EngineeringModeService"

    const-string v2, "Invalid version"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x3e8

    :cond_c
    :goto_3
    invoke-direct {v10, v14}, Lcom/android/server/EngineeringModeService;->updateTokenState(Z)V

    monitor-exit v13

    return v1

    :catchall_0
    move-exception v0

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getStringModes()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "EngineeringModeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getStringModes() is called. EM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "ERROR_EM_SERVICE"

    monitor-exit v0

    return-object v3

    :cond_0
    sget v3, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v4, 0xf

    if-ge v3, v4, :cond_1

    const-string v3, "EngineeringModeService"

    const-string/jumbo v4, "getModes will be supported in EM version 1. Coming soon"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "ERROR_NOT_SUPPORTED"

    monitor-exit v0

    return-object v3

    :cond_1
    sget v3, Lcom/android/server/EngineeringModeService;->mVersion:I

    if-ne v3, v4, :cond_2

    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->nativeEM15GetModes()[B

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    :cond_2
    sget v3, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v4, 0x14

    if-lt v3, v4, :cond_4

    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->nativeEM20GetModes()[B

    move-result-object v3

    move-object v2, v3

    :goto_0
    if-nez v2, :cond_3

    const-string v3, "EngineeringModeService"

    const-string v4, "Return value is null. please check error"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "ERROR_INTERNAL"

    monitor-exit v0

    return-object v3

    :cond_3
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/EngineeringModeService;->updateTokenState(Z)V

    monitor-exit v0

    return-object v1

    :cond_4
    const-string v3, "EngineeringModeService"

    const-string v4, "Invalid version"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "ERROR_NOT_SUPPORTED"

    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getTUC(I)I
    .locals 4

    iget-object v0, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "EngineeringModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getTUC() is called EM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, -0x514

    monitor-exit v0

    return v1

    :cond_0
    sget v1, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v2, 0x14

    if-eq v1, v2, :cond_1

    const-string v1, "EngineeringModeService"

    const-string/jumbo v2, "getTUC is only supported in EM version 2"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x3e8

    monitor-exit v0

    return v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/EngineeringModeService;->nativeEM20GetTUC(I)I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getToken()[B
    .locals 4

    iget-object v0, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "EngineeringModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getToken() is called EM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_NO_PERMISSION:[B

    monitor-exit v0

    return-object v1

    :cond_0
    sget v1, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v2, 0x14

    if-eq v1, v2, :cond_1

    const-string v1, "EngineeringModeService"

    const-string/jumbo v2, "getToken is only supported in EM version 2"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    monitor-exit v0

    return-object v1

    :cond_1
    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->nativeEM20ReadToken()[B

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getVersion()I
    .locals 1

    sget v0, Lcom/android/server/EngineeringModeService;->mVersion:I

    return v0
.end method

.method public installToken([B)I
    .locals 4

    iget-object v0, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "EngineeringModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "installToken() is called. EM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, -0x514

    monitor-exit v0

    return v1

    :cond_0
    sget v1, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v2, 0x14

    if-ge v1, v2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/EngineeringModeService;->nativeInstallToken([B)I

    move-result v1

    :goto_0
    goto :goto_1

    :cond_1
    sget v1, Lcom/android/server/EngineeringModeService;->mVersion:I

    if-ne v1, v2, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/EngineeringModeService;->nativeEM20InstallToken([B)I

    move-result v1

    goto :goto_0

    :cond_2
    const-string v1, "EngineeringModeService"

    const-string v2, "Invalid version"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x3e8

    :goto_1
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/EngineeringModeService;->updateTokenState(Z)V

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public installTokenForESS(Ljava/lang/String;)[B
    .locals 5

    iget-object v0, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "EngineeringModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "installTokenForESS() is called EM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    sget v2, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v3, 0xf

    if-ge v2, v3, :cond_0

    const-string v2, "EngineeringModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "installTokenForESS is not supported on EM Version:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_NOT_SUPPORTED:[B

    monitor-exit v0

    return-object v2

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_NO_PERMISSION:[B

    monitor-exit v0

    return-object v2

    :cond_1
    if-nez p1, :cond_2

    const-string v2, "EngineeringModeService"

    const-string/jumbo v3, "invaild parameter"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_INVAILD_PARAM:[B

    monitor-exit v0

    return-object v2

    :cond_2
    iget-object v2, p0, Lcom/android/server/EngineeringModeService;->mESS:Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;

    iget-object v2, p0, Lcom/android/server/EngineeringModeService;->mESS:Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;

    iget-object v3, p0, Lcom/android/server/EngineeringModeService;->mESS:Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, p1}, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;->init(ILjava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v3, v2, :cond_3

    const-string v2, "EngineeringModeService"

    const-string v3, "Failed to initialize ESS"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_INVAILD_PARAM:[B

    monitor-exit v0

    return-object v2

    :cond_3
    sget v2, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v4, 0x14

    if-ge v2, v4, :cond_4

    iget-object v2, p0, Lcom/android/server/EngineeringModeService;->mESS:Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;

    invoke-virtual {v2}, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;->getmRxIVB64()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/EngineeringModeService;->mESS:Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;

    invoke-virtual {v4}, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;->getmEtokenB64()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/android/server/EngineeringModeService;->nativeEM15InstallTokenForESS_V1(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/server/EngineeringModeService;->mESS:Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;

    invoke-virtual {v2}, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;->getmRxIVB64()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/EngineeringModeService;->mESS:Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;

    invoke-virtual {v4}, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;->getmEtokenB64()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/android/server/EngineeringModeService;->nativeEM20InstallTokenForESS_V1(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    move-object v1, v2

    :goto_0
    if-nez v1, :cond_5

    const-string v2, "EngineeringModeService"

    const-string v4, "Error occured in native"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-direct {p0, v3}, Lcom/android/server/EngineeringModeService;->updateTokenState(Z)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isTokenInstalled()I
    .locals 5

    iget-object v0, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "EngineeringModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isTokenInstalled() is called. EM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, -0x514

    monitor-exit v0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/EngineeringModeService;->getServerTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    const-string v1, "EngineeringModeService"

    const-string/jumbo v2, "getStatus(iS) Failed to get EM Server time. Use current value"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget v1, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v2, 0x14

    if-ge v1, v2, :cond_3

    sget v1, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v2, 0xf

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/server/EngineeringModeService;->mEMServerDate:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/EngineeringModeService;->nativeEM15IsTokenInstalled(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->nativeIsTokenInstalled()I

    move-result v1

    :goto_0
    goto :goto_1

    :cond_3
    sget v1, Lcom/android/server/EngineeringModeService;->mVersion:I

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/server/EngineeringModeService;->mEMServerDate:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/EngineeringModeService;->nativeEM20IsTokenInstalled(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_4
    const-string v1, "EngineeringModeService"

    const-string v2, "Invalid version"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x3e8

    :goto_1
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/EngineeringModeService;->updateTokenState(Z)V

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public makeDelTokenForESS(Ljava/lang/String;)[B
    .locals 6

    iget-object v0, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "EngineeringModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makeDelTokenForESS() is called EM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    sget v2, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v3, 0xf

    if-ge v2, v3, :cond_0

    const-string v2, "EngineeringModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "makeDelTokenForESS is not supported on EM Version:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_NOT_SUPPORTED:[B

    monitor-exit v0

    return-object v2

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_NO_PERMISSION:[B

    monitor-exit v0

    return-object v2

    :cond_1
    if-nez p1, :cond_2

    const-string v2, "EngineeringModeService"

    const-string/jumbo v3, "invaild parameter"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_INVAILD_PARAM:[B

    monitor-exit v0

    return-object v2

    :cond_2
    iget-object v2, p0, Lcom/android/server/EngineeringModeService;->mESS:Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;

    iget-object v2, p0, Lcom/android/server/EngineeringModeService;->mESS:Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;

    iget-object v3, p0, Lcom/android/server/EngineeringModeService;->mESS:Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, p1}, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;->init(ILjava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v3, v2, :cond_3

    const-string v2, "EngineeringModeService"

    const-string v3, "Failed to initialize ESS"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_INVAILD_PARAM:[B

    monitor-exit v0

    return-object v2

    :cond_3
    sget v2, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v4, 0x14

    if-ge v2, v4, :cond_4

    iget-object v2, p0, Lcom/android/server/EngineeringModeService;->mESS:Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;

    invoke-virtual {v2}, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;->getmPrefixBody()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/EngineeringModeService;->mESS:Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;

    invoke-virtual {v4}, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;->getmCert()[B

    move-result-object v4

    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->getImei()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v5}, Lcom/android/server/EngineeringModeService;->nativeEM15MakeDelTokenForESS_V1(Ljava/lang/String;[BLjava/lang/String;)[B

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/server/EngineeringModeService;->mESS:Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;

    invoke-virtual {v2}, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;->getmPrefixBody()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/EngineeringModeService;->mESS:Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;

    invoke-virtual {v4}, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;->getmCert()[B

    move-result-object v4

    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->getImei()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v5}, Lcom/android/server/EngineeringModeService;->nativeEM20MakeDelTokenForESS_V1(Ljava/lang/String;[BLjava/lang/String;)[B

    move-result-object v2

    move-object v1, v2

    :goto_0
    if-nez v1, :cond_5

    const-string v2, "EngineeringModeService"

    const-string v4, "Error occured in native"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-direct {p0, v3}, Lcom/android/server/EngineeringModeService;->updateTokenState(Z)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public makeITLReq(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 4

    iget-object v0, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "EngineeringModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makeITLReq() is called. EM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_NO_PERMISSION:[B

    monitor-exit v0

    return-object v1

    :cond_0
    sget v1, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v2, 0x14

    if-eq v1, v2, :cond_1

    const-string v1, "EngineeringModeService"

    const-string/jumbo v2, "makeITLReq is only supported in EM version 2"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_NO_PERMISSION:[B

    monitor-exit v0

    return-object v1

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/EngineeringModeService;->nativeEM20MakeITLReq(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public makeITLReqForESS(Ljava/lang/String;)[B
    .locals 5

    iget-object v0, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "EngineeringModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "makeITLReqForESS() is called. EM"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v2, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v3, 0x14

    if-ge v2, v3, :cond_0

    const-string v2, "EngineeringModeService"

    const-string/jumbo v3, "getID is only supported in EM version 2"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_NOT_SUPPORTED:[B

    monitor-exit v0

    return-object v2

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_NO_PERMISSION:[B

    monitor-exit v0

    return-object v2

    :cond_1
    if-nez p1, :cond_2

    const-string v2, "EngineeringModeService"

    const-string/jumbo v3, "invaild parameter"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_INVAILD_PARAM:[B

    monitor-exit v0

    return-object v2

    :cond_2
    iget-object v2, p0, Lcom/android/server/EngineeringModeService;->mESS:Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/EngineeringModeService;->mESS:Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;

    iget-object v4, p0, Lcom/android/server/EngineeringModeService;->mESS:Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;

    const/4 v4, 0x4

    invoke-virtual {v3, v4, p1}, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;->init(ILjava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_3

    const-string v2, "EngineeringModeService"

    const-string v3, "Failed to initialize ESS"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_INVAILD_PARAM:[B

    monitor-exit v0

    return-object v2

    :cond_3
    iget-object v2, p0, Lcom/android/server/EngineeringModeService;->mESS:Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;

    invoke-virtual {v2}, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;->getmPrefixBody()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/EngineeringModeService;->mESS:Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;

    invoke-virtual {v3}, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;->getmCert()[B

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/EngineeringModeService;->nativeEM20MakeITLReqForESS_V1(Ljava/lang/String;[B)[B

    move-result-object v2

    move-object v1, v2

    if-nez v1, :cond_4

    const-string v2, "EngineeringModeService"

    const-string v3, "Error occured in native"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public makeTokenReq(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)[B
    .locals 8

    iget-object v0, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "EngineeringModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makeTokenReq() is called EM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_NO_PERMISSION:[B

    monitor-exit v0

    return-object v1

    :cond_0
    sget v1, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v2, 0x14

    if-eq v1, v2, :cond_1

    const-string v1, "EngineeringModeService"

    const-string/jumbo v2, "makeTokenReq(SSBS) is only supported in EM version 2"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    monitor-exit v0

    return-object v1

    :cond_1
    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->getImei()Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/EngineeringModeService;->nativeEM20MakeTokenReq(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public makeTokenReqForESS(Ljava/lang/String;)[B
    .locals 6

    iget-object v0, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "EngineeringModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makeTokenReqForESS() is called EM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/EngineeringModeService;->mESS:Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;

    const/4 v2, 0x0

    sget v3, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v4, 0xf

    if-ge v3, v4, :cond_0

    const-string v3, "EngineeringModeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "makeTokenReqForESS is not supported on EM Version:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_NOT_SUPPORTED:[B

    monitor-exit v0

    return-object v3

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_NO_PERMISSION:[B

    monitor-exit v0

    return-object v3

    :cond_1
    if-nez p1, :cond_2

    const-string v3, "EngineeringModeService"

    const-string/jumbo v4, "invaild parameter"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_INVAILD_PARAM:[B

    monitor-exit v0

    return-object v3

    :cond_2
    iget-object v3, p0, Lcom/android/server/EngineeringModeService;->mESS:Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;

    iget-object v3, p0, Lcom/android/server/EngineeringModeService;->mESS:Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;

    iget-object v4, p0, Lcom/android/server/EngineeringModeService;->mESS:Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, p1}, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;->init(ILjava/lang/String;)I

    move-result v3

    if-eq v4, v3, :cond_3

    const-string v3, "EngineeringModeService"

    const-string v4, "Failed to initialize ESS"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_INVAILD_PARAM:[B

    monitor-exit v0

    return-object v3

    :cond_3
    sget v3, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v4, 0x14

    if-ge v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/server/EngineeringModeService;->mESS:Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;

    invoke-virtual {v3}, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;->getmPrefixBody()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/EngineeringModeService;->mESS:Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;

    invoke-virtual {v4}, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;->getmCert()[B

    move-result-object v4

    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->getImei()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/EngineeringModeService;->nativeEM15MakeTokenReqForESS_V1(Ljava/lang/String;[BLjava/lang/String;)[B

    move-result-object v3

    move-object v1, v3

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/server/EngineeringModeService;->mESS:Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;

    invoke-virtual {v3}, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;->getmPrefixBody()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/EngineeringModeService;->mESS:Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;

    invoke-virtual {v4}, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;->getmCert()[B

    move-result-object v4

    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->getImei()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/EngineeringModeService;->nativeEM20MakeTokenReqForESS_V1(Ljava/lang/String;[BLjava/lang/String;)[B

    move-result-object v3

    move-object v1, v3

    :goto_0
    if-nez v1, :cond_5

    const-string v3, "EngineeringModeService"

    const-string v4, "Error occured in native"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public recoveryITL([B)I
    .locals 4

    iget-object v0, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "EngineeringModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "recoveryITL() is called. EM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, -0x514

    monitor-exit v0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/EngineeringModeService;->nativeEM20RecoveryITL([B)I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public recoveryITLForESS(Ljava/lang/String;)I
    .locals 5

    iget-object v0, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "EngineeringModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "recoveryITLForESS() is called EM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x3e8

    sget v2, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v3, 0x14

    if-ge v2, v3, :cond_0

    const-string v2, "EngineeringModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "recoveryITLForESS is not supported on EM Version:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, -0x640

    monitor-exit v0

    return v2

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, -0x514

    monitor-exit v0

    return v2

    :cond_1
    const/16 v2, -0x6a4

    if-nez p1, :cond_2

    const-string v3, "EngineeringModeService"

    const-string/jumbo v4, "invaild parameter"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return v2

    :cond_2
    iget-object v3, p0, Lcom/android/server/EngineeringModeService;->mESS:Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;

    iget-object v3, p0, Lcom/android/server/EngineeringModeService;->mESS:Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;

    iget-object v4, p0, Lcom/android/server/EngineeringModeService;->mESS:Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;

    const/4 v4, 0x5

    invoke-virtual {v3, v4, p1}, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;->init(ILjava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-eq v4, v3, :cond_3

    const-string v3, "EngineeringModeService"

    const-string v4, "Failed to initialize ESS"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return v2

    :cond_3
    iget-object v2, p0, Lcom/android/server/EngineeringModeService;->mESS:Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;

    invoke-virtual {v2}, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;->getmRxIVB64()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/EngineeringModeService;->mESS:Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;

    invoke-virtual {v3}, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;->getmErsdB64()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/EngineeringModeService;->nativeEM20RecoveryITLForESS_V1(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move v1, v2

    if-eqz v1, :cond_4

    const-string v2, "EngineeringModeService"

    const-string v3, "Error occured in native"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v4}, Lcom/android/server/EngineeringModeService;->updateTokenState(Z)V

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeToken()I
    .locals 4

    iget-object v0, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "EngineeringModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeToken() is called. EM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, -0x514

    monitor-exit v0

    return v1

    :cond_0
    sget v1, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v2, 0x14

    if-ge v1, v2, :cond_1

    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->nativeRemoveToken()I

    move-result v1

    :goto_0
    goto :goto_1

    :cond_1
    sget v1, Lcom/android/server/EngineeringModeService;->mVersion:I

    if-ne v1, v2, :cond_2

    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->nativeEM20RemoveToken()I

    move-result v1

    goto :goto_0

    :cond_2
    const-string v1, "EngineeringModeService"

    const-string v2, "Invalid version"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x3e8

    :goto_1
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/EngineeringModeService;->updateTokenState(Z)V

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendFuseCmd()I
    .locals 4

    iget-object v0, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "EngineeringModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendFuseCmd() is called. EM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, -0x514

    monitor-exit v0

    return v1

    :cond_0
    sget v1, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v2, 0x14

    if-ge v1, v2, :cond_1

    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->nativeSendFuseCmd()I

    move-result v1

    :goto_0
    goto :goto_1

    :cond_1
    sget v1, Lcom/android/server/EngineeringModeService;->mVersion:I

    if-ne v1, v2, :cond_2

    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->nativeEM20SendFuseCmd()I

    move-result v1

    goto :goto_0

    :cond_2
    const-string v1, "EngineeringModeService"

    const-string v2, "Invalid version"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x3e8

    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setPriorityTime(Ljava/lang/String;)[B
    .locals 4

    iget-object v0, p0, Lcom/android/server/EngineeringModeService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "EngineeringModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPriorityTime() is called. EM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/server/EngineeringModeService;->mVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/EngineeringModeService;->isEmService(II)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_NO_PERMISSION:[B

    monitor-exit v0

    return-object v1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/EngineeringModeService;->checkTokenExist()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "EngineeringModeService"

    const-string v2, "Token isn\'t installed"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_NOT_INSATALLED:[B

    monitor-exit v0

    return-object v1

    :cond_1
    if-nez p1, :cond_2

    const-string v1, "EngineeringModeService"

    const-string/jumbo v2, "time is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_INVAILD_PARAM:[B

    monitor-exit v0

    return-object v1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_3

    const-string v1, "EngineeringModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "time length is invalid("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_INVAILD_PARAM:[B

    monitor-exit v0

    return-object v1

    :cond_3
    sget v1, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v2, 0xf

    if-ge v1, v2, :cond_4

    const-string v1, "EngineeringModeService"

    const-string/jumbo v2, "setPriorityTime is only supported in EM version 2"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_NOT_SUPPORTED:[B

    :goto_0
    goto :goto_1

    :cond_4
    sget v1, Lcom/android/server/EngineeringModeService;->mVersion:I

    if-ne v1, v2, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/EngineeringModeService;->nativeEM15SetPriorityTime([B)[B

    move-result-object v1

    goto :goto_0

    :cond_5
    sget v1, Lcom/android/server/EngineeringModeService;->mVersion:I

    const/16 v2, 0x14

    if-ne v1, v2, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/EngineeringModeService;->nativeEM20SetPriorityTime([B)[B

    move-result-object v1

    goto :goto_0

    :cond_6
    const-string v1, "EngineeringModeService"

    const-string v2, "Invalid version"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    :goto_1
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/EngineeringModeService;->updateTokenState(Z)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setVersion(I)V
    .locals 0

    sput p1, Lcom/android/server/EngineeringModeService;->mVersion:I

    return-void
.end method
