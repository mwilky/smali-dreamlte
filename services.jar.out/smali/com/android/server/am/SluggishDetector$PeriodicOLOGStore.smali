.class final Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;
.super Ljava/lang/Object;
.source "SluggishDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SluggishDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PeriodicOLOGStore"
.end annotation


# static fields
.field private static Diff_OlogLength:J = 0x0L

.field private static Origin_OlogLength:J = 0x0L

.field private static STORE_FLAG_FOR_ADD:Z = false

.field private static STORE_FLAG_FOR_PERIODIC:Z = false

.field private static STORE_INTERVAL_FOR_PERIODIC:J = 0x0L

.field private static final STORE_WAIT_INTERVAL_FOR_PERIODIC:J = 0x7530L

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/am/SluggishDetector;->access$500()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->TAG:Ljava/lang/String;

    const-wide/32 v0, 0x5265c00

    sput-wide v0, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->STORE_INTERVAL_FOR_PERIODIC:J

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->STORE_FLAG_FOR_PERIODIC:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->STORE_FLAG_FOR_ADD:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->Origin_OlogLength:J

    sput-wide v0, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->Diff_OlogLength:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$11700()V
    .locals 0

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->clear()V

    return-void
.end method

.method static synthetic access$12100(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->executeCommand(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12500(Ljava/io/PrintWriter;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$1600()V
    .locals 0

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->setReportFlagForPeriodic()V

    return-void
.end method

.method static synthetic access$1700()V
    .locals 0

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->storeOLOG()V

    return-void
.end method

.method static synthetic access$400()V
    .locals 0

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->init()V

    return-void
.end method

.method static synthetic access$800()V
    .locals 0

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->setReportFlagForPeriodicWithDelay()V

    return-void
.end method

.method static synthetic access$8700()V
    .locals 0

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->step()V

    return-void
.end method

.method private static check()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static clear()V
    .locals 1

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->check()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->init()V

    :cond_0
    return-void
.end method

.method private static clear(Ljava/io/PrintWriter;)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->clear()V

    if-eqz p0, :cond_0

    const-string v0, " [OLOG] CLEAR OLOGR - PERIODIC STORE"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static dump(Ljava/io/PrintWriter;)V
    .locals 3

    if-nez p0, :cond_0

    sget-object v0, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->TAG:Ljava/lang/String;

    const-string v1, " [OLOG][ADB] dump() - pw is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->check()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->init()V

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string v0, " [OLOG][ADB] SLUGGISH DETECTOR - PERIODIC OLOG STORE"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "======================================================================"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "======================================================================"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "======================================================================"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "END OF SLUGGISH DETECTOR - PERIODIC OLOG STORE"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->TAG:Ljava/lang/String;

    const-string v2, " [OLOG][ADB] dump() - Exception"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static executeCommand(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    const-string v0, " [OLOG][ADB] exc start"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " [OLOG][ADB] exc cmd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->dump(Ljava/io/PrintWriter;)V

    const-string v0, " [OLOG][ADB] olog end"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->TAG:Ljava/lang/String;

    const-string v1, " [OLOG][ADB] executeCommand() - pw or cmd is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, " [OLOG][ADB] exc pw or cmd is null"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static init()V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/SluggishDetector;->ENABLE:Z

    return-void
.end method

.method private static makeStoreOLOG()V
    .locals 0

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->sendPeriodicReportToHandler()V

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->clear()V

    return-void
.end method

.method private static sendPeriodicReportToHandler()V
    .locals 3

    const/16 v0, 0xe

    const-wide/16 v1, 0x7530

    invoke-static {v0, v1, v2}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->access$10500(IJ)V

    return-void
.end method

.method private static setReportFlagForPeriodic()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->STORE_FLAG_FOR_PERIODIC:Z

    return-void
.end method

.method private static setReportFlagForPeriodicWithDelay()V
    .locals 3

    sget-wide v0, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->STORE_INTERVAL_FOR_PERIODIC:J

    const/16 v2, 0x3eb

    invoke-static {v2, v0, v1}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->access$10500(IJ)V

    return-void
.end method

.method private static step()V
    .locals 1

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->check()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->init()V

    :cond_0
    sget-boolean v0, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->STORE_FLAG_FOR_PERIODIC:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->STORE_FLAG_FOR_PERIODIC:Z

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->setReportFlagForPeriodicWithDelay()V

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->makeStoreOLOG()V

    :cond_1
    return-void
.end method

.method private static storeOLOG()V
    .locals 24

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v0, 0x800

    new-array v3, v0, [B

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    new-instance v0, Ljava/io/File;

    const-string v8, "/proc/kperfmon"

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    new-instance v0, Ljava/io/File;

    const-string v9, "/data/log/remaining_olog"

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v9, v0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v10

    if-eqz v10, :cond_5

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v10

    sget-boolean v10, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->STORE_FLAG_FOR_ADD:Z

    const/4 v11, 0x1

    if-eqz v10, :cond_0

    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v9, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object v2, v10

    goto :goto_0

    :cond_0
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v2, v10

    :goto_0
    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    :goto_1
    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v10

    move v0, v10

    const/4 v11, 0x0

    if-lez v10, :cond_1

    invoke-virtual {v2, v3, v11, v0}, Ljava/io/FileOutputStream;->write([BII)V

    const/4 v11, 0x1

    goto :goto_1

    :cond_1
    sget-boolean v10, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->STORE_FLAG_FOR_ADD:Z

    if-eqz v10, :cond_2

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v16

    sget-wide v18, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->Origin_OlogLength:J

    sub-long v16, v16, v18

    sput-wide v16, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->Diff_OlogLength:J

    goto :goto_2

    :cond_2
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v16

    sput-wide v16, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->Diff_OlogLength:J

    :goto_2
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v16

    sput-wide v16, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->Origin_OlogLength:J

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v18

    sget-wide v20, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->Diff_OlogLength:J

    const-wide/32 v22, 0x4c4b40

    cmp-long v10, v20, v22

    if-gtz v10, :cond_4

    sget-wide v20, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->Origin_OlogLength:J

    const-wide/32 v22, 0x989680

    cmp-long v10, v20, v22

    if-lez v10, :cond_3

    goto :goto_3

    :cond_3
    const/4 v10, 0x1

    sput-boolean v10, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->STORE_FLAG_FOR_ADD:Z

    goto :goto_4

    :cond_4
    :goto_3
    sput-boolean v11, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->STORE_FLAG_FOR_ADD:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_4
    if-eqz v1, :cond_6

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    :cond_6
    :goto_5
    if-eqz v2, :cond_8

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object v10, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_8

    :catch_2
    move-exception v0

    :try_start_3
    sget-object v10, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " [OLOG] storeOLOG - File copy error"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_7

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_6

    :catch_3
    move-exception v0

    :cond_7
    :goto_6
    if-eqz v2, :cond_8

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_8
    :goto_7
    return-void

    :goto_8
    if-eqz v2, :cond_9

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_9

    :catch_4
    move-exception v0

    :cond_9
    :goto_9
    if-eqz v10, :cond_a

    :try_start_7
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_a

    :catch_5
    move-exception v0

    :cond_a
    :goto_a
    throw v1
.end method

.method private static storeOLOG(Ljava/io/PrintWriter;)V
    .locals 29

    move-object/from16 v1, p0

    if-eqz v1, :cond_0

    const-string v0, " [OLOG][ADB] STORE OLOGR - PERIODIC STORE"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v0, 0x800

    new-array v4, v0, [B

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    new-instance v0, Ljava/io/File;

    const-string v9, "/proc/kperfmon"

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v9, v0

    new-instance v0, Ljava/io/File;

    const-string v10, "/data/log/remaining_olog"

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v10, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " [OLOG][ADB] BEFORE lowBound = "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ", lownanoBound = "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :try_start_0
    const-string v0, " [OLOG][ADB] storeOLOG try"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v11

    if-eqz v11, :cond_6

    const-string v11, " [OLOG][ADB] storeOLOG lk_proc is file"

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    move-object v2, v11

    :try_start_1
    sget-boolean v11, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->STORE_FLAG_FOR_ADD:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    const/4 v12, 0x1

    if-eqz v11, :cond_1

    :try_start_2
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v10, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object v3, v11

    const-string v11, " [OLOG][ADB] storeOLOG should add"

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v26, v4

    move-wide/from16 v27, v5

    goto/16 :goto_d

    :catch_0
    move-exception v0

    move-object/from16 v26, v4

    move-wide/from16 v27, v5

    goto/16 :goto_a

    :cond_1
    :try_start_3
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v3, v11

    const-string v11, " [OLOG][ADB] storeOLOG should overwrite"

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    :goto_0
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v13

    sput-wide v13, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->Origin_OlogLength:J

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " [OLOG][ADB] START lk_save = "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v13, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->Origin_OlogLength:J

    invoke-virtual {v11, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v15

    move-wide/from16 v17, v15

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " [OLOG][ADB] START midBound = "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, ",  midnanoBound = "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v19, v13

    move-wide/from16 v12, v17

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v2, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v11
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move v0, v11

    const/4 v14, 0x0

    if-lez v11, :cond_2

    :try_start_5
    invoke-virtual {v3, v4, v14, v0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :cond_2
    :try_start_6
    sget-boolean v11, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->STORE_FLAG_FOR_ADD:Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v11, :cond_3

    :try_start_7
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v15

    sget-wide v17, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->Origin_OlogLength:J

    sub-long v15, v15, v17

    sput-wide v15, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->Diff_OlogLength:J
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    :cond_3
    :try_start_8
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v15

    sput-wide v15, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->Diff_OlogLength:J

    :goto_2
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v15

    sput-wide v15, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->Origin_OlogLength:J

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " [OLOG][ADB] AFTER lk_save = "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, ", Diff lk_save = "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v14, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->Diff_OlogLength:J

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    move-wide/from16 v21, v16

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v23, v0

    const-string v0, " [OLOG][ADB] AFTER higBound = "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", highnanoBound = "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-wide/from16 v2, v21

    :try_start_9
    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-wide v16, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->Diff_OlogLength:J
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    const-wide/32 v21, 0x4c4b40

    cmp-long v0, v16, v21

    if-gtz v0, :cond_5

    :try_start_a
    sget-wide v16, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->Origin_OlogLength:J

    const-wide/32 v21, 0x989680

    cmp-long v0, v16, v21

    if-lez v0, :cond_4

    goto :goto_5

    :cond_4
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->STORE_FLAG_FOR_ADD:Z
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object/from16 v26, v4

    move-wide/from16 v27, v5

    :goto_3
    move-object/from16 v3, v24

    move-object/from16 v4, v25

    goto/16 :goto_e

    :catch_1
    move-exception v0

    move-object/from16 v26, v4

    move-wide/from16 v27, v5

    :goto_4
    move-object/from16 v2, v24

    move-object/from16 v3, v25

    goto/16 :goto_a

    :cond_5
    :goto_5
    const/4 v0, 0x0

    :try_start_b
    sput-boolean v0, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->STORE_FLAG_FOR_ADD:Z

    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " [OLOG][ADB] STORE FUN excute time is = "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    move-object/from16 v26, v4

    move-wide/from16 v27, v5

    sub-long v4, v14, v19

    :try_start_c
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v4, v2, v12

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " [OLOG][ADB] STORE_FLAG_FOR_ADD = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->STORE_FLAG_FOR_ADD:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    goto/16 :goto_7

    :catchall_2
    move-exception v0

    move-object v2, v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object/from16 v26, v4

    move-wide/from16 v27, v5

    move-object v2, v0

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    goto/16 :goto_9

    :catch_3
    move-exception v0

    move-object/from16 v26, v4

    move-wide/from16 v27, v5

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    goto/16 :goto_a

    :catchall_4
    move-exception v0

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v26, v4

    move-wide/from16 v27, v5

    move-object v2, v0

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    goto/16 :goto_e

    :catch_4
    move-exception v0

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v26, v4

    move-wide/from16 v27, v5

    goto :goto_a

    :catchall_5
    move-exception v0

    move-object/from16 v24, v2

    move-object/from16 v26, v4

    move-wide/from16 v27, v5

    move-object v2, v0

    move-object v4, v3

    move-object/from16 v3, v24

    goto :goto_e

    :catch_5
    move-exception v0

    move-object/from16 v24, v2

    move-object/from16 v26, v4

    move-wide/from16 v27, v5

    goto :goto_a

    :cond_6
    move-object/from16 v26, v4

    move-wide/from16 v27, v5

    :goto_7
    if-eqz v2, :cond_7

    :try_start_d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    goto :goto_8

    :catch_6
    move-exception v0

    :cond_7
    :goto_8
    if-eqz v3, :cond_9

    :try_start_e
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    goto :goto_c

    :catch_7
    move-exception v0

    goto :goto_c

    :catchall_6
    move-exception v0

    move-object/from16 v26, v4

    move-wide/from16 v27, v5

    move-object v4, v3

    move-object v3, v2

    move-object v2, v0

    :goto_9
    goto :goto_e

    :catch_8
    move-exception v0

    move-object/from16 v26, v4

    move-wide/from16 v27, v5

    :goto_a
    :try_start_f
    sget-object v4, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " [OLOG][ADB] storeOLOG - File copy error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, " [OLOG][ADB] storeOLOG catch"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    if-eqz v2, :cond_8

    :try_start_10
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9

    goto :goto_b

    :catch_9
    move-exception v0

    :cond_8
    :goto_b
    if-eqz v3, :cond_9

    :try_start_11
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7

    :cond_9
    :goto_c
    return-void

    :catchall_7
    move-exception v0

    :goto_d
    move-object v4, v3

    move-object v3, v2

    move-object v2, v0

    :goto_e
    if-eqz v3, :cond_a

    :try_start_12
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_a

    goto :goto_f

    :catch_a
    move-exception v0

    :cond_a
    :goto_f
    if-eqz v4, :cond_b

    :try_start_13
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_b

    goto :goto_10

    :catch_b
    move-exception v0

    :cond_b
    :goto_10
    throw v2
.end method
