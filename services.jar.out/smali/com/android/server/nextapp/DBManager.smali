.class Lcom/android/server/nextapp/DBManager;
.super Ljava/lang/Object;
.source "DBManager.java"


# static fields
.field public static final LOCK_DATABASE:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "PkgPredictorService-DBManager"

.field private static volatile mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private static mInstance:Lcom/android/server/nextapp/DBManager;


# instance fields
.field private mDB:Landroid/database/sqlite/SQLiteDatabase;

.field private mDBHelper:Lcom/android/server/nextapp/DBHelper;

.field protected mInfoTable:Ljava/lang/String;

.field protected mSampleTable:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/nextapp/DBManager;->LOCK_DATABASE:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "tbl_Sample"

    iput-object v0, p0, Lcom/android/server/nextapp/DBManager;->mSampleTable:Ljava/lang/String;

    const-string/jumbo v0, "tbl_Summary"

    iput-object v0, p0, Lcom/android/server/nextapp/DBManager;->mInfoTable:Ljava/lang/String;

    sget-object v0, Lcom/android/server/nextapp/DBManager;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/nextapp/DBManager;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/server/nextapp/DBHelper;

    invoke-direct {v1, v0}, Lcom/android/server/nextapp/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/nextapp/DBManager;->mDBHelper:Lcom/android/server/nextapp/DBHelper;

    iget-object v1, p0, Lcom/android/server/nextapp/DBManager;->mDBHelper:Lcom/android/server/nextapp/DBHelper;

    invoke-virtual {v1}, Lcom/android/server/nextapp/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/nextapp/DBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    :cond_0
    return-void
.end method

.method protected static destroyInstance()V
    .locals 2

    sget-object v0, Lcom/android/server/nextapp/DBManager;->LOCK_DATABASE:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/nextapp/DBManager;->mInstance:Lcom/android/server/nextapp/DBManager;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/nextapp/DBManager;->mInstance:Lcom/android/server/nextapp/DBManager;

    invoke-virtual {v1}, Lcom/android/server/nextapp/DBManager;->destroy()V

    :cond_0
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/nextapp/DBManager;->mInstance:Lcom/android/server/nextapp/DBManager;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected static getInstance()Lcom/android/server/nextapp/DBManager;
    .locals 2

    sget-object v0, Lcom/android/server/nextapp/DBManager;->LOCK_DATABASE:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/nextapp/DBManager;->mInstance:Lcom/android/server/nextapp/DBManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/nextapp/DBManager;

    invoke-direct {v1}, Lcom/android/server/nextapp/DBManager;-><init>()V

    sput-object v1, Lcom/android/server/nextapp/DBManager;->mInstance:Lcom/android/server/nextapp/DBManager;

    :cond_0
    sget-object v1, Lcom/android/server/nextapp/DBManager;->mInstance:Lcom/android/server/nextapp/DBManager;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected static init(Landroid/content/Context;)V
    .locals 1

    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/server/nextapp/DBManager;->mContext:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method


# virtual methods
.method protected beginTransaction()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/nextapp/DBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/nextapp/DBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :cond_0
    return-void
.end method

.method protected destroy()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/nextapp/DBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iput-object v0, p0, Lcom/android/server/nextapp/DBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_5

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "PkgPredictorService-DBManager"

    const-string v3, "Error on closing database"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/android/server/nextapp/DBManager;->mDBHelper:Lcom/android/server/nextapp/DBHelper;

    invoke-virtual {v1}, Lcom/android/server/nextapp/DBHelper;->close()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    iput-object v0, p0, Lcom/android/server/nextapp/DBManager;->mDBHelper:Lcom/android/server/nextapp/DBHelper;

    goto :goto_3

    :catchall_1
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    :try_start_3
    const-string v2, "PkgPredictorService-DBManager"

    const-string v3, "Error on closing database helper"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :goto_3
    return-void

    :goto_4
    iput-object v0, p0, Lcom/android/server/nextapp/DBManager;->mDBHelper:Lcom/android/server/nextapp/DBHelper;

    throw v1

    :goto_5
    iput-object v0, p0, Lcom/android/server/nextapp/DBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    throw v1
.end method

.method protected endTransaction()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/nextapp/DBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/nextapp/DBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_0
    return-void
.end method

.method protected execSQL(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/nextapp/DBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method protected insert(Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 2

    iget-object v0, p0, Lcom/android/server/nextapp/DBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected isDBClosed()Z
    .locals 3

    sget-object v0, Lcom/android/server/nextapp/DBManager;->LOCK_DATABASE:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/nextapp/DBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/nextapp/DBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    xor-int/2addr v1, v2

    monitor-exit v0

    return v1

    :cond_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    iget-object v0, p0, Lcom/android/server/nextapp/DBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Lcom/android/server/nextapp/DBManager;->LOCK_DATABASE:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/nextapp/DBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

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

.method protected setTransactionSuccessful()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/nextapp/DBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/nextapp/DBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    :cond_0
    return-void
.end method
