.class public Lcom/android/server/enterprise/storage/ContainerStorageHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ContainerStorageHelper.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mInstance:Lcom/android/server/enterprise/storage/ContainerStorageHelper;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ContainerStorageHelper"

    sput-object v0, Lcom/android/server/enterprise/storage/ContainerStorageHelper;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/storage/ContainerStorageHelper;->mInstance:Lcom/android/server/enterprise/storage/ContainerStorageHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/database/DatabaseErrorHandler;)V
    .locals 6

    const-string v2, "/data/system/container/databases/container.db"

    const/4 v3, 0x0

    const/16 v4, 0x9

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V

    iput-object p1, p0, Lcom/android/server/enterprise/storage/ContainerStorageHelper;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/server/enterprise/storage/ContainerStorageHelper;->TAG:Ljava/lang/String;

    const-string v1, "Created container DB Helper with version 9"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;Landroid/database/DatabaseErrorHandler;)Lcom/android/server/enterprise/storage/ContainerStorageHelper;
    .locals 2

    const-class v0, Lcom/android/server/enterprise/storage/ContainerStorageHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/storage/ContainerStorageHelper;->mInstance:Lcom/android/server/enterprise/storage/ContainerStorageHelper;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/enterprise/storage/ContainerStorageHelper;

    invoke-direct {v1, p0, p1}, Lcom/android/server/enterprise/storage/ContainerStorageHelper;-><init>(Landroid/content/Context;Landroid/database/DatabaseErrorHandler;)V

    sput-object v1, Lcom/android/server/enterprise/storage/ContainerStorageHelper;->mInstance:Lcom/android/server/enterprise/storage/ContainerStorageHelper;

    :cond_0
    sget-object v1, Lcom/android/server/enterprise/storage/ContainerStorageHelper;->mInstance:Lcom/android/server/enterprise/storage/ContainerStorageHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    sget-object v0, Lcom/android/server/enterprise/storage/ContainerStorageHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCreate container DB Helper"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    sget-object v0, Lcom/android/server/enterprise/storage/ContainerStorageHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUpgrade container DB Helper from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/storage/ContainerDBConstants;->upgradeTableContainerActive:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x5

    if-ge p2, v0, :cond_1

    sget-object v0, Lcom/android/server/enterprise/storage/ContainerDBConstants;->upgradeTableContainerActivePassExpired:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/storage/ContainerDBConstants;->upgradeTableContainerActiveAdminUid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/enterprise/storage/ContainerStorageHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onUpgrade: AdminUid field was already created"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/server/enterprise/storage/ContainerDBConstants;->upgradeTableContainerLockType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    sget-object v1, Lcom/android/server/enterprise/storage/ContainerStorageHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onUpgrade: Locktype field was already created"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    :try_start_2
    sget-object v0, Lcom/android/server/enterprise/storage/ContainerDBConstants;->upgradeTableContainerType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    sget-object v1, Lcom/android/server/enterprise/storage/ContainerStorageHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onUpgrade: Locktype field was already created"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    const/4 v0, 0x6

    if-ge p2, v0, :cond_2

    sget-object v0, Lcom/android/server/enterprise/storage/ContainerDBConstants;->upgradeTableContainerActiveFailedPassAttemps:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/enterprise/storage/ContainerDBConstants;->createTableCertificateManager:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x7

    if-ge p2, v0, :cond_3

    :try_start_3
    sget-object v0, Lcom/android/server/enterprise/storage/ContainerDBConstants;->upgradeTableScreenlock:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    sget-object v1, Lcom/android/server/enterprise/storage/ContainerStorageHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onUpgrade: Screenlock field was already created"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_3
    const/16 v0, 0x8

    if-ge p2, v0, :cond_4

    :try_start_4
    sget-object v0, Lcom/android/server/enterprise/storage/ContainerDBConstants;->upgradeTableFirmwareVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    sget-object v1, Lcom/android/server/enterprise/storage/ContainerStorageHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onUpgrade: Firmware version was already created"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_4
    return-void
.end method

.method select(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13

    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/ContainerStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    const/4 v11, 0x0

    move-object v12, v11

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v1, v10

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v8, p4

    :try_start_0
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v12, v0

    if-eqz v12, :cond_1

    invoke-interface {v12}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    return-object v12

    :cond_0
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/enterprise/storage/ContainerStorageHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Database query Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v11
.end method
