.class public Lcom/android/server/nextapp/BigDataService;
.super Landroid/app/job/JobService;
.source "BigDataService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/nextapp/BigDataService$BigDataRunnable;
    }
.end annotation


# static fields
.field private static final MAPREFS:Ljava/lang/String; = "/data/system/bigdata-pkgaccuracy"

.field private static final TAG:Ljava/lang/String; = "PkgPredictorService-BigDataService"

.field private static mContext:Landroid/content/Context;

.field private static mPkgAccuracyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private static sBigDataService:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/nextapp/BigDataService;->mContext:Landroid/content/Context;

    sput-object v0, Lcom/android/server/nextapp/BigDataService;->mPkgAccuracyMap:Ljava/util/HashMap;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android"

    const-class v2, Lcom/android/server/nextapp/BigDataService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/nextapp/BigDataService;->sBigDataService:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/server/nextapp/BigDataService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getPkgAccuracyMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/server/nextapp/BigDataService;->mPkgAccuracyMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static initPkgAccuracyMap()V
    .locals 5

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/bigdata-pkgaccuracy"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    const-string v4, "/data/system/bigdata-pkgaccuracy"

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v3

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    sput-object v3, Lcom/android/server/nextapp/BigDataService;->mPkgAccuracyMap:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    nop

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catchall_0
    move-exception v3

    goto :goto_4

    :catch_0
    move-exception v3

    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :goto_1
    nop

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_1
    :goto_2
    nop

    :goto_3
    goto :goto_8

    :goto_4
    nop

    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    goto :goto_5

    :catch_2
    move-exception v4

    goto :goto_6

    :cond_2
    :goto_5
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_7

    :goto_6
    nop

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    nop

    :cond_3
    :goto_7
    throw v3

    :cond_4
    const-string v1, "PkgPredictorService-BigDataService"

    const-string/jumbo v2, "pkgAccuracyMap file not exists"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    return-void
.end method

.method public static savePkgAccuracyMap()V
    .locals 4

    sget-object v0, Lcom/android/server/nextapp/BigDataService;->mPkgAccuracyMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const-string v0, "PkgPredictorService-BigDataService"

    const-string v1, "Save error: mPkgAccuracyMap == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v3, "/data/system/bigdata-pkgaccuracy"

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v2

    sget-object v2, Lcom/android/server/nextapp/BigDataService;->mPkgAccuracyMap:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :goto_0
    nop

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    nop

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_1
    :goto_2
    goto :goto_3

    :catchall_0
    move-exception v2

    goto :goto_4

    :catch_1
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    :cond_2
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :goto_3
    return-void

    :goto_4
    nop

    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    goto :goto_5

    :catch_2
    move-exception v3

    goto :goto_6

    :cond_3
    :goto_5
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_7

    :goto_6
    nop

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    nop

    :cond_4
    :goto_7
    throw v2
.end method

.method public static schedule(Landroid/content/Context;)V
    .locals 7

    sput-object p0, Lcom/android/server/nextapp/BigDataService;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/nextapp/BigDataService;->initPkgAccuracyMap()V

    const-string/jumbo v0, "jobscheduler"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    new-instance v1, Landroid/app/job/JobInfo$Builder;

    sget-object v2, Lcom/android/server/nextapp/BigDataService;->sBigDataService:Landroid/content/ComponentName;

    const/16 v3, 0x2582

    invoke-direct {v1, v3, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    const-wide/32 v3, 0xf731400

    const-wide/32 v5, 0x5265c00

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/app/job/JobInfo$Builder;->setPeriodic(JJ)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    sget-boolean v2, Lcom/android/server/nextapp/PkgPredictorService;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "PkgPredictorService-BigDataService"

    const-string/jumbo v3, "schedule send bigData job..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static updatePkgAccuracyMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    sput-object p0, Lcom/android/server/nextapp/BigDataService;->mPkgAccuracyMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/nextapp/BigDataService$BigDataRunnable;

    invoke-direct {v1, p0, p1}, Lcom/android/server/nextapp/BigDataService$BigDataRunnable;-><init>(Lcom/android/server/nextapp/BigDataService;Landroid/app/job/JobParameters;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
