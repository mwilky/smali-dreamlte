.class public Lcom/android/server/nextapp/Collector;
.super Ljava/lang/Object;
.source "Collector.java"


# static fields
.field private static DEBUG:Z = false

.field private static final MAX_SIZE:I = 0x64

.field private static final TAG:Ljava/lang/String; = "PkgPredictorService-Collector"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLoadHistory:Lcom/android/server/nextapp/LoopStack;

.field private mRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/nextapp/Record;",
            ">;"
        }
    .end annotation
.end field

.field private mSimState:Z

.field mWM:Landroid/view/WindowManager;

.field mWifi:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/nextapp/Collector;->DEBUG:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/server/nextapp/PkgPredictorService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/nextapp/Collector;->DEBUG:Z

    iput-object p1, p0, Lcom/android/server/nextapp/Collector;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/nextapp/Collector;->mRecords:Ljava/util/List;

    new-instance v0, Lcom/android/server/nextapp/LoopStack;

    invoke-direct {v0}, Lcom/android/server/nextapp/LoopStack;-><init>()V

    iput-object v0, p0, Lcom/android/server/nextapp/Collector;->mLoadHistory:Lcom/android/server/nextapp/LoopStack;

    iget-object v0, p0, Lcom/android/server/nextapp/Collector;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/nextapp/Collector;->mWM:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/server/nextapp/Collector;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/nextapp/Collector;->mWifi:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method private getBtStatus(Lcom/android/server/nextapp/Record;)V
    .locals 3

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput v1, p1, Lcom/android/server/nextapp/Record;->btStatus:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput v1, p1, Lcom/android/server/nextapp/Record;->btStatus:I

    goto :goto_0

    :cond_1
    const-string v1, "PkgPredictorService-Collector"

    const-string v2, "btAdapter is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    iput v1, p1, Lcom/android/server/nextapp/Record;->btStatus:I

    :goto_0
    return-void
.end method

.method private getScreenOrientation(Lcom/android/server/nextapp/Record;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/nextapp/Collector;->mWM:Landroid/view/WindowManager;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    const-string v0, "PkgPredictorService-Collector"

    const-string/jumbo v2, "mWM is null!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p1, Lcom/android/server/nextapp/Record;->screenOrientation:I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/nextapp/Collector;->mWM:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v2, "PkgPredictorService-Collector"

    const-string/jumbo v3, "display is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p1, Lcom/android/server/nextapp/Record;->screenOrientation:I

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    iput v2, p1, Lcom/android/server/nextapp/Record;->screenOrientation:I

    goto :goto_1

    :cond_3
    :goto_0
    iput v2, p1, Lcom/android/server/nextapp/Record;->screenOrientation:I

    :goto_1
    return-void
.end method

.method private getWifiStatus(Lcom/android/server/nextapp/Record;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/nextapp/Collector;->mWifi:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    const-string v0, "PkgPredictorService-Collector"

    const-string/jumbo v1, "mWifi is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    iput v0, p1, Lcom/android/server/nextapp/Record;->wifiStatus:I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/nextapp/Collector;->mWifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput v0, p1, Lcom/android/server/nextapp/Record;->wifiStatus:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput v0, p1, Lcom/android/server/nextapp/Record;->wifiStatus:I

    :goto_0
    return-void
.end method

.method private save2db(Lcom/android/server/nextapp/Record;)V
    .locals 7

    invoke-static {}, Lcom/android/server/nextapp/DBManager;->getInstance()Lcom/android/server/nextapp/DBManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/nextapp/DBManager;->isDBClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "PkgPredictorService-Collector"

    const-string/jumbo v2, "save record failed! db is closed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v1, Lcom/android/server/nextapp/DBManager;->LOCK_DATABASE:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/nextapp/DBManager;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/android/server/nextapp/Record;->prediction:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v4, "hour_of_day"

    iget v5, p1, Lcom/android/server/nextapp/Record;->hourOfDay:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "day_of_week"

    iget v5, p1, Lcom/android/server/nextapp/Record;->dayOfWeek:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v4, "previous_one"

    iget-object v5, p1, Lcom/android/server/nextapp/Record;->previousPkg:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "previous_two"

    iget-object v5, p1, Lcom/android/server/nextapp/Record;->previousPkg:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "previous_three"

    iget-object v5, p1, Lcom/android/server/nextapp/Record;->previousPkg:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "running_pkg"

    iget-object v5, p1, Lcom/android/server/nextapp/Record;->runningPkg:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "screen_orientation"

    iget v5, p1, Lcom/android/server/nextapp/Record;->screenOrientation:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v4, "wifi_status"

    iget v5, p1, Lcom/android/server/nextapp/Record;->wifiStatus:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "bt_status"

    iget v5, p1, Lcom/android/server/nextapp/Record;->btStatus:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v4, "predict_time"

    iget v5, p1, Lcom/android/server/nextapp/Record;->predictTime:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "apk_version"

    iget-object v5, p1, Lcom/android/server/nextapp/Record;->apkVersion:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "consume_time"

    iget v5, p1, Lcom/android/server/nextapp/Record;->consumeTime:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "activity_name"

    iget-object v5, p1, Lcom/android/server/nextapp/Record;->activityName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p1, Lcom/android/server/nextapp/Record;->error:Ljava/lang/String;

    if-eqz v4, :cond_2

    const-string/jumbo v4, "error"

    iget-object v5, p1, Lcom/android/server/nextapp/Record;->error:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string/jumbo v4, "prediction"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string/jumbo v4, "launch_time"

    iget-wide v5, p1, Lcom/android/server/nextapp/Record;->launchTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v4, "success"

    iget-boolean v5, p1, Lcom/android/server/nextapp/Record;->success:Z

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v4, "is_preloaded"

    iget-boolean v5, p1, Lcom/android/server/nextapp/Record;->preloaded:Z

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v4, v0, Lcom/android/server/nextapp/DBManager;->mSampleTable:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Lcom/android/server/nextapp/DBManager;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-virtual {v0}, Lcom/android/server/nextapp/DBManager;->setTransactionSuccessful()V

    sget-boolean v4, Lcom/android/server/nextapp/Collector;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string v4, "PkgPredictorService-Collector"

    const-string/jumbo v5, "save one record successfully!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :try_start_2
    invoke-virtual {v0}, Lcom/android/server/nextapp/DBManager;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_3

    :catch_0
    move-exception v2

    :try_start_3
    const-string v3, "PkgPredictorService-Collector"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v0}, Lcom/android/server/nextapp/DBManager;->endTransaction()V

    :goto_2
    nop

    monitor-exit v1

    return-void

    :goto_3
    invoke-virtual {v0}, Lcom/android/server/nextapp/DBManager;->endTransaction()V

    throw v2

    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2
.end method


# virtual methods
.method protected dump(Ljava/io/PrintWriter;)V
    .locals 5

    const-string v0, "cached Records<unsaved to db>:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/nextapp/Collector;->mRecords:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/nextapp/Collector;->mRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/nextapp/Record;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/nextapp/Record;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "------------------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object v0, p0, Lcom/android/server/nextapp/Collector;->mLoadHistory:Lcom/android/server/nextapp/LoopStack;

    invoke-virtual {v0}, Lcom/android/server/nextapp/LoopStack;->pop3()[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "the latest three apps:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "------------------------------"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected generateRecord()Lcom/android/server/nextapp/Record;
    .locals 3

    new-instance v0, Lcom/android/server/nextapp/Record;

    invoke-direct {v0}, Lcom/android/server/nextapp/Record;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, v0, Lcom/android/server/nextapp/Record;->hourOfDay:I

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, v0, Lcom/android/server/nextapp/Record;->dayOfWeek:I

    iget-object v2, p0, Lcom/android/server/nextapp/Collector;->mLoadHistory:Lcom/android/server/nextapp/LoopStack;

    invoke-virtual {v2}, Lcom/android/server/nextapp/LoopStack;->pop3()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/nextapp/Record;->previousPkg:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/nextapp/Collector;->getScreenOrientation(Lcom/android/server/nextapp/Record;)V

    invoke-direct {p0, v0}, Lcom/android/server/nextapp/Collector;->getWifiStatus(Lcom/android/server/nextapp/Record;)V

    invoke-direct {p0, v0}, Lcom/android/server/nextapp/Collector;->getBtStatus(Lcom/android/server/nextapp/Record;)V

    return-object v0
.end method

.method protected isRecordsSizeMax()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/nextapp/Collector;->mRecords:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/nextapp/Collector;->mRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected loadPkg(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/nextapp/Collector;->mLoadHistory:Lcom/android/server/nextapp/LoopStack;

    invoke-virtual {v0, p1}, Lcom/android/server/nextapp/LoopStack;->push(Ljava/lang/String;)V

    return-void
.end method

.method protected saveRecord(Lcom/android/server/nextapp/Record;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/nextapp/Collector;->mRecords:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/server/nextapp/Collector;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "PkgPredictorService-Collector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "save record...\n ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/nextapp/Record;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/nextapp/Collector;->mRecords:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected saveRecords()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/nextapp/Collector;->mRecords:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/nextapp/Collector;->mRecords:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/nextapp/Collector;->mRecords:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/nextapp/Record;

    invoke-direct {p0, v2}, Lcom/android/server/nextapp/Collector;->save2db(Lcom/android/server/nextapp/Record;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/nextapp/Collector;->mRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected updateActivityLaunchConsumeTime(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/nextapp/Collector;->mRecords:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/nextapp/Collector;->mRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/nextapp/Collector;->mRecords:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/nextapp/Record;

    iget-object v3, v2, Lcom/android/server/nextapp/Record;->runningPkg:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v2, Lcom/android/server/nextapp/Record;->consumeTime:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    iput-object p2, v2, Lcom/android/server/nextapp/Record;->activityName:Ljava/lang/String;

    long-to-int v3, p3

    iput v3, v2, Lcom/android/server/nextapp/Record;->consumeTime:I

    sget-boolean v3, Lcom/android/server/nextapp/Collector;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "PkgPredictorService-Collector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "update activity launch time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
