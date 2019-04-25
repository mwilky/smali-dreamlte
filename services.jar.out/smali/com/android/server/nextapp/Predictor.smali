.class public Lcom/android/server/nextapp/Predictor;
.super Ljava/lang/Object;
.source "Predictor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/nextapp/Predictor$PkgComparator;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "PkgPredictorService-Predictor"

.field public static final classifierfs:Ljava/lang/String; = "/data/system/predictor-model"

.field public static final structurefs:Ljava/lang/String; = "/data/system/predictor-structure"


# instance fields
.field private mClassifier:Lcom/android/server/nextapp/Classifier;

.field private mContext:Landroid/content/Context;

.field private mSummary:Lcom/android/server/nextapp/Summary;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/nextapp/Predictor;->DEBUG:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/server/nextapp/PkgPredictorService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/nextapp/Predictor;->DEBUG:Z

    iput-object p1, p0, Lcom/android/server/nextapp/Predictor;->mContext:Landroid/content/Context;

    const-string v0, "/data/system/predictor-model"

    const-string v1, "/data/system/predictor-structure"

    invoke-static {v0, v1}, Lcom/android/server/nextapp/Classifier;->hasPersist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/server/nextapp/Classifier;

    const-string v1, "/data/system/predictor-model"

    const-string v2, "/data/system/predictor-structure"

    invoke-direct {v0, v1, v2}, Lcom/android/server/nextapp/Classifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/nextapp/Predictor;->mClassifier:Lcom/android/server/nextapp/Classifier;

    const-string v0, "PkgPredictorService-Predictor"

    const-string/jumbo v1, "has built model"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "PkgPredictorService-Predictor"

    const-string/jumbo v1, "not has built model"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/nextapp/Classifier;

    invoke-direct {v0}, Lcom/android/server/nextapp/Classifier;-><init>()V

    iput-object v0, p0, Lcom/android/server/nextapp/Predictor;->mClassifier:Lcom/android/server/nextapp/Classifier;

    :goto_0
    iget-object v0, p0, Lcom/android/server/nextapp/Predictor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/nextapp/TrainService;->schedule(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/server/nextapp/Predictor;->getSummary()Lcom/android/server/nextapp/Summary;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/nextapp/Predictor;->mSummary:Lcom/android/server/nextapp/Summary;

    return-void
.end method

.method private getSummary()Lcom/android/server/nextapp/Summary;
    .locals 6

    invoke-static {}, Lcom/android/server/nextapp/DBManager;->getInstance()Lcom/android/server/nextapp/DBManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/nextapp/DBManager;->isDBClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "PkgPredictorService-Predictor"

    const-string/jumbo v2, "get Summary failed! db is closed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/server/nextapp/Summary;

    invoke-direct {v1}, Lcom/android/server/nextapp/Summary;-><init>()V

    return-object v1

    :cond_0
    new-instance v1, Lcom/android/server/nextapp/Summary;

    invoke-direct {v1}, Lcom/android/server/nextapp/Summary;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "select * from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/nextapp/DBManager;->mInfoTable:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " order by id desc limit 0,1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/nextapp/DBManager;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "build_time"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/server/nextapp/Summary;->buildtime:J

    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-object v1
.end method

.method private saveSummary(Lcom/android/server/nextapp/Summary;)V
    .locals 9

    invoke-static {}, Lcom/android/server/nextapp/DBManager;->getInstance()Lcom/android/server/nextapp/DBManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/nextapp/DBManager;->isDBClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "PkgPredictorService-Predictor"

    const-string/jumbo v2, "save Summary failed! db is closed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "select * from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/nextapp/DBManager;->mInfoTable:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " where build_time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p1, Lcom/android/server/nextapp/Summary;->buildtime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/nextapp/DBManager;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p1, Lcom/android/server/nextapp/Summary;->total:I

    const-string/jumbo v5, "total_num"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p1, Lcom/android/server/nextapp/Summary;->total:I

    iget v4, p1, Lcom/android/server/nextapp/Summary;->right:I

    const-string/jumbo v5, "right_num"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p1, Lcom/android/server/nextapp/Summary;->right:I

    const/4 v1, 0x1

    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    if-eqz v1, :cond_2

    sget-object v4, Lcom/android/server/nextapp/DBManager;->LOCK_DATABASE:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/nextapp/DBManager;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "update "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/nextapp/DBManager;->mInfoTable:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " set right_num = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/android/server/nextapp/Summary;->right:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", total_num = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/android/server/nextapp/Summary;->total:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " where build_time = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p1, Lcom/android/server/nextapp/Summary;->buildtime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    invoke-virtual {v0, v2}, Lcom/android/server/nextapp/DBManager;->execSQL(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/nextapp/DBManager;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Lcom/android/server/nextapp/DBManager;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v5

    goto :goto_1

    :catch_0
    move-exception v5

    :try_start_3
    const-string v6, "PkgPredictorService-Predictor"

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v0}, Lcom/android/server/nextapp/DBManager;->endTransaction()V

    :goto_0
    nop

    monitor-exit v4

    goto :goto_3

    :goto_1
    invoke-virtual {v0}, Lcom/android/server/nextapp/DBManager;->endTransaction()V

    throw v5

    :catchall_1
    move-exception v5

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5

    :cond_2
    sget-object v4, Lcom/android/server/nextapp/DBManager;->LOCK_DATABASE:Ljava/lang/Object;

    monitor-enter v4

    :try_start_5
    invoke-virtual {v0}, Lcom/android/server/nextapp/DBManager;->beginTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "build_time"

    iget-wide v7, p1, Lcom/android/server/nextapp/Summary;->buildtime:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v6, "total_num"

    iget v7, p1, Lcom/android/server/nextapp/Summary;->total:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v6, "right_num"

    iget v7, p1, Lcom/android/server/nextapp/Summary;->right:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v6, "train_time"

    iget-wide v7, p1, Lcom/android/server/nextapp/Summary;->trainTime:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v6, v0, Lcom/android/server/nextapp/DBManager;->mInfoTable:Ljava/lang/String;

    invoke-virtual {v0, v6, v5}, Lcom/android/server/nextapp/DBManager;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-virtual {v0}, Lcom/android/server/nextapp/DBManager;->setTransactionSuccessful()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-virtual {v0}, Lcom/android/server/nextapp/DBManager;->endTransaction()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_2
    move-exception v5

    goto :goto_4

    :catch_1
    move-exception v5

    :try_start_8
    const-string v6, "PkgPredictorService-Predictor"

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    invoke-virtual {v0}, Lcom/android/server/nextapp/DBManager;->endTransaction()V

    :goto_2
    nop

    monitor-exit v4

    :goto_3
    return-void

    :goto_4
    invoke-virtual {v0}, Lcom/android/server/nextapp/DBManager;->endTransaction()V

    throw v5

    :catchall_3
    move-exception v5

    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v5
.end method


# virtual methods
.method protected dump(Ljava/io/PrintWriter;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/nextapp/Predictor;->mClassifier:Lcom/android/server/nextapp/Classifier;

    invoke-virtual {v0, p1}, Lcom/android/server/nextapp/Classifier;->dump(Ljava/io/PrintWriter;)V

    new-instance v0, Lcom/android/server/nextapp/Summary;

    iget-object v1, p0, Lcom/android/server/nextapp/Predictor;->mSummary:Lcom/android/server/nextapp/Summary;

    invoke-direct {v0, v1}, Lcom/android/server/nextapp/Summary;-><init>(Lcom/android/server/nextapp/Summary;)V

    invoke-static {}, Lcom/android/server/nextapp/DBManager;->getInstance()Lcom/android/server/nextapp/DBManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "select * from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/nextapp/DBManager;->mInfoTable:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " where build_time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/nextapp/Predictor;->mSummary:Lcom/android/server/nextapp/Summary;

    iget-wide v3, v3, Lcom/android/server/nextapp/Summary;->buildtime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/nextapp/DBManager;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, v0, Lcom/android/server/nextapp/Summary;->total:I

    const-string/jumbo v5, "total_num"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Lcom/android/server/nextapp/Summary;->total:I

    iget v4, v0, Lcom/android/server/nextapp/Summary;->right:I

    const-string/jumbo v5, "right_num"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Lcom/android/server/nextapp/Summary;->right:I

    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v4, "dump summary: "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "------------------------------"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method protected predict(Lcom/android/server/nextapp/Record;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/nextapp/Record;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/android/server/nextapp/Predictor;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PkgPredictorService-Predictor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start predicting...\n ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/nextapp/Record;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/nextapp/Predictor;->mClassifier:Lcom/android/server/nextapp/Classifier;

    invoke-virtual {v0, p1}, Lcom/android/server/nextapp/Classifier;->predict3apps(Lcom/android/server/nextapp/Record;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/server/nextapp/Record;->error:Ljava/lang/String;

    const-string v1, "PkgPredictorService-Predictor"

    iget-object v2, p1, Lcom/android/server/nextapp/Record;->error:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method protected predictWithHitRatio(Lcom/android/server/nextapp/Record;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/nextapp/Record;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/android/server/nextapp/Predictor;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PkgPredictorService-Predictor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start predicting...\n ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/nextapp/Record;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/nextapp/Predictor;->mClassifier:Lcom/android/server/nextapp/Classifier;

    sget v1, Lcom/android/server/nextapp/PkgPredictorService;->candidateNum:I

    invoke-virtual {v0, p1, v1}, Lcom/android/server/nextapp/Classifier;->predictNapps(Lcom/android/server/nextapp/Record;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/server/nextapp/BigDataService;->getPkgAccuracyMap()Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lcom/android/server/nextapp/Predictor$PkgComparator;

    invoke-direct {v2, p0, v1}, Lcom/android/server/nextapp/Predictor$PkgComparator;-><init>(Lcom/android/server/nextapp/Predictor;Ljava/util/HashMap;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_0
    sget v5, Lcom/android/server/nextapp/PkgPredictorService;->candidateNum:I

    if-ge v4, v5, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v5, Lcom/android/server/nextapp/Predictor;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "PkgPredictorService-Predictor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Get ratio top"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " pkg: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/server/nextapp/Record;->error:Ljava/lang/String;

    const-string v1, "PkgPredictorService-Predictor"

    iget-object v2, p1, Lcom/android/server/nextapp/Record;->error:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method protected save()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/nextapp/Predictor;->mSummary:Lcom/android/server/nextapp/Summary;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/nextapp/Predictor;->mSummary:Lcom/android/server/nextapp/Summary;

    invoke-direct {p0, v1}, Lcom/android/server/nextapp/Predictor;->saveSummary(Lcom/android/server/nextapp/Summary;)V

    sget-boolean v1, Lcom/android/server/nextapp/Predictor;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "PkgPredictorService-Predictor"

    const-string/jumbo v2, "save summary successful."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v3, "/data/system/predictor-structure"

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v2

    iget-object v2, p0, Lcom/android/server/nextapp/Predictor;->mClassifier:Lcom/android/server/nextapp/Classifier;

    iget-object v2, v2, Lcom/android/server/nextapp/Classifier;->mStructure:Lcom/android/server/nextapp/DataStructure;

    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    sget-boolean v2, Lcom/android/server/nextapp/Predictor;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "PkgPredictorService-Predictor"

    const-string/jumbo v3, "save data structure successful."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    nop

    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :goto_0
    nop

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :goto_1
    nop

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :cond_2
    :goto_2
    goto :goto_3

    :catchall_0
    move-exception v2

    goto :goto_4

    :catch_1
    move-exception v2

    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    :cond_3
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catch_2
    move-exception v2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_4

    :try_start_6
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    :cond_4
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    :goto_3
    return-void

    :goto_4
    nop

    if-eqz v1, :cond_5

    :try_start_7
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    goto :goto_5

    :catch_3
    move-exception v3

    goto :goto_6

    :cond_5
    :goto_5
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_7

    :goto_6
    nop

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    nop

    :cond_6
    :goto_7
    throw v2

    :catchall_1
    move-exception v1

    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v1
.end method

.method protected trainModel()V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/nextapp/Predictor;->mClassifier:Lcom/android/server/nextapp/Classifier;

    invoke-virtual {v2}, Lcom/android/server/nextapp/Classifier;->train()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/nextapp/Predictor;->mClassifier:Lcom/android/server/nextapp/Classifier;

    iput-wide v0, v2, Lcom/android/server/nextapp/Classifier;->version:J

    :try_start_0
    const-string v2, "PkgPredictorService-Predictor- start persisting after traing"

    const-wide/16 v3, 0x40

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/nextapp/Predictor;->mClassifier:Lcom/android/server/nextapp/Classifier;

    const-string v5, "/data/system/predictor-model"

    const-string v6, "/data/system/predictor-structure"

    invoke-static {v2, v5, v6}, Lcom/android/server/nextapp/Classifier;->persist(Lcom/android/server/nextapp/Classifier;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/nextapp/Predictor;->mSummary:Lcom/android/server/nextapp/Summary;

    monitor-enter v3
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v4, p0, Lcom/android/server/nextapp/Predictor;->mSummary:Lcom/android/server/nextapp/Summary;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    iput-wide v5, v4, Lcom/android/server/nextapp/Summary;->trainTime:J

    new-instance v4, Lcom/android/server/nextapp/Summary;

    iget-object v5, p0, Lcom/android/server/nextapp/Predictor;->mSummary:Lcom/android/server/nextapp/Summary;

    invoke-direct {v4, v5}, Lcom/android/server/nextapp/Summary;-><init>(Lcom/android/server/nextapp/Summary;)V

    move-object v2, v4

    iget-object v4, p0, Lcom/android/server/nextapp/Predictor;->mSummary:Lcom/android/server/nextapp/Summary;

    iget-object v5, p0, Lcom/android/server/nextapp/Predictor;->mClassifier:Lcom/android/server/nextapp/Classifier;

    iget-wide v5, v5, Lcom/android/server/nextapp/Classifier;->version:J

    iput-wide v5, v4, Lcom/android/server/nextapp/Summary;->buildtime:J

    iget-object v4, p0, Lcom/android/server/nextapp/Predictor;->mSummary:Lcom/android/server/nextapp/Summary;

    const/4 v5, 0x0

    iput v5, v4, Lcom/android/server/nextapp/Summary;->total:I

    iget-object v4, p0, Lcom/android/server/nextapp/Predictor;->mSummary:Lcom/android/server/nextapp/Summary;

    iput v5, v4, Lcom/android/server/nextapp/Summary;->right:I

    iget-object v4, p0, Lcom/android/server/nextapp/Predictor;->mSummary:Lcom/android/server/nextapp/Summary;

    const-wide/16 v5, 0x0

    iput-wide v5, v4, Lcom/android/server/nextapp/Summary;->trainTime:J

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :try_start_2
    invoke-direct {p0, v2}, Lcom/android/server/nextapp/Predictor;->saveSummary(Lcom/android/server/nextapp/Summary;)V

    sget-boolean v3, Lcom/android/server/nextapp/Predictor;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "PkgPredictorService-Predictor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "finish training... ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/nextapp/Predictor;->mSummary:Lcom/android/server/nextapp/Summary;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_0
    :goto_0
    goto :goto_1

    :cond_1
    const-string v2, "PkgPredictorService-Predictor"

    const-string/jumbo v3, "training failed..."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method protected updateSummary(Lcom/android/server/nextapp/Record;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/nextapp/Predictor;->mSummary:Lcom/android/server/nextapp/Summary;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/nextapp/Predictor;->mSummary:Lcom/android/server/nextapp/Summary;

    iget v2, v1, Lcom/android/server/nextapp/Summary;->total:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/nextapp/Summary;->total:I

    iget-object v1, p1, Lcom/android/server/nextapp/Record;->prediction:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/nextapp/Record;->prediction:Ljava/util/List;

    iget-object v2, p1, Lcom/android/server/nextapp/Record;->runningPkg:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/nextapp/Predictor;->mSummary:Lcom/android/server/nextapp/Summary;

    iget v2, v1, Lcom/android/server/nextapp/Summary;->right:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/nextapp/Summary;->right:I

    :cond_0
    sget-boolean v1, Lcom/android/server/nextapp/Predictor;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "PkgPredictorService-Predictor"

    const-string/jumbo v2, "update summary success."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
