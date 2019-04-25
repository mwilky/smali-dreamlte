.class public Lcom/samsung/android/displaysolution/BigDataLoggingService;
.super Ljava/lang/Object;
.source "BigDataLoggingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/displaysolution/BigDataLoggingService$ScrControlHandler;,
        Lcom/samsung/android/displaysolution/BigDataLoggingService$SettingsObserver;,
        Lcom/samsung/android/displaysolution/BigDataLoggingService$ScreenWatchingReceiver;
    }
.end annotation


# static fields
.field private static final BDL_ON:Ljava/lang/String; = "sys.bigdatalogging.bdlon"

.field private static final TAG:Ljava/lang/String; = "BigDataLoggingService"


# instance fields
.field private final DEBUG:Z

.field private final mContext:Landroid/content/Context;

.field private mHandler:Lcom/samsung/android/displaysolution/BigDataLoggingService$ScrControlHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mUseBigDataLoggingServiceConfig:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/BigDataLoggingService;->DEBUG:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/BigDataLoggingService;->mUseBigDataLoggingServiceConfig:Z

    iput-object p1, p0, Lcom/samsung/android/displaysolution/BigDataLoggingService;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BigDataLoggingServiceThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/displaysolution/BigDataLoggingService;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/samsung/android/displaysolution/BigDataLoggingService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/samsung/android/displaysolution/BigDataLoggingService$ScrControlHandler;

    iget-object v1, p0, Lcom/samsung/android/displaysolution/BigDataLoggingService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/displaysolution/BigDataLoggingService$ScrControlHandler;-><init>(Lcom/samsung/android/displaysolution/BigDataLoggingService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/displaysolution/BigDataLoggingService;->mHandler:Lcom/samsung/android/displaysolution/BigDataLoggingService$ScrControlHandler;

    iget-object v0, p0, Lcom/samsung/android/displaysolution/BigDataLoggingService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/BigDataLoggingService;->mUseBigDataLoggingServiceConfig:Z

    const-string/jumbo v0, "sys.bigdatalogging.bdlon"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/displaysolution/BigDataLoggingService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/samsung/android/displaysolution/BigDataLoggingService$ScreenWatchingReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/displaysolution/BigDataLoggingService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/displaysolution/BigDataLoggingService;Lcom/samsung/android/displaysolution/BigDataLoggingService$1;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/BigDataLoggingService;->mUseBigDataLoggingServiceConfig:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "sys.bigdatalogging.bdlon"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/displaysolution/BigDataLoggingService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/BigDataLoggingService;->receive_boot_completed_intent()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/displaysolution/BigDataLoggingService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/BigDataLoggingService;->receive_screen_on_intent()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/displaysolution/BigDataLoggingService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/BigDataLoggingService;->receive_screen_off_intent()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/displaysolution/BigDataLoggingService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/BigDataLoggingService;->receive_user_present_intent()V

    return-void
.end method

.method private getStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x80

    const/16 v2, 0x80

    new-array v3, v2, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v2, :cond_0

    aput-byte v6, v3, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v2

    nop

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v5, v2

    if-eqz v5, :cond_1

    new-instance v2, Ljava/lang/String;

    add-int/lit8 v7, v5, -0x1

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v6, v7, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v4, v2

    :cond_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v2

    const-string v6, "BigDataLoggingService"

    const-string v7, "File Close error"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_3

    :catch_1
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    const-string v6, "BigDataLoggingService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_2
    move-exception v2

    :try_start_4
    const-string v6, "BigDataLoggingService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FileNotFoundException : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_2

    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    :cond_2
    :goto_2
    return-object v4

    :goto_3
    if-eqz v0, :cond_3

    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_4

    :catch_3
    move-exception v6

    const-string v7, "BigDataLoggingService"

    const-string v8, "File Close error"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_4
    throw v2
.end method

.method private receive_boot_completed_intent()V
    .locals 0

    return-void
.end method

.method private receive_screen_off_intent()V
    .locals 0

    return-void
.end method

.method private receive_screen_on_intent()V
    .locals 0

    return-void
.end method

.method private receive_user_present_intent()V
    .locals 0

    return-void
.end method
