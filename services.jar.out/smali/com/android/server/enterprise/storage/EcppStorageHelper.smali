.class public Lcom/android/server/enterprise/storage/EcppStorageHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "EcppStorageHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EcppStorageHelper"

.field private static mInstance:Lcom/android/server/enterprise/storage/EcppStorageHelper;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/storage/EcppStorageHelper;->mInstance:Lcom/android/server/enterprise/storage/EcppStorageHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/database/DatabaseErrorHandler;)V
    .locals 6

    const-string v2, "/data/system/container/databases/ecpp.enterprise.db"

    const/4 v3, 0x0

    const/16 v4, 0x8

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V

    iput-object p1, p0, Lcom/android/server/enterprise/storage/EcppStorageHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;Landroid/database/DatabaseErrorHandler;)Lcom/android/server/enterprise/storage/EcppStorageHelper;
    .locals 2

    const-class v0, Lcom/android/server/enterprise/storage/EcppStorageHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/storage/EcppStorageHelper;->mInstance:Lcom/android/server/enterprise/storage/EcppStorageHelper;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/enterprise/storage/EcppStorageHelper;

    invoke-direct {v1, p0, p1}, Lcom/android/server/enterprise/storage/EcppStorageHelper;-><init>(Landroid/content/Context;Landroid/database/DatabaseErrorHandler;)V

    sput-object v1, Lcom/android/server/enterprise/storage/EcppStorageHelper;->mInstance:Lcom/android/server/enterprise/storage/EcppStorageHelper;

    :cond_0
    sget-object v1, Lcom/android/server/enterprise/storage/EcppStorageHelper;->mInstance:Lcom/android/server/enterprise/storage/EcppStorageHelper;
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
.method public dbExist(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EcppStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    move-object v4, p2

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "EcppStorageHelper"

    const-string v3, "could not execute dbExist()"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "EcppStorageHelper"

    const-string v3, "could not execute dbExist() "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    nop

    :goto_1
    return v0
.end method

.method getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/storage/EcppStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    const/4 v12, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    move-object v13, v0

    const/4 v0, 0x0

    if-eqz v1, :cond_2

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    move-object v3, v5

    array-length v5, v1

    move v6, v0

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v1, v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "= ? AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const-string v5, " AND "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v0, v5}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v5

    move-object/from16 v15, p3

    move-object v14, v2

    move-object/from16 v16, v3

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object/from16 v4, p3

    goto/16 :goto_7

    :catch_0
    move-exception v0

    move-object/from16 v4, p3

    goto :goto_5

    :cond_2
    :goto_1
    const/4 v4, 0x0

    move-object v14, v2

    move-object/from16 v16, v3

    move-object v15, v4

    :goto_2
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v10

    move-object/from16 v3, p1

    move-object/from16 v4, p4

    move-object v5, v14

    move-object v6, v15

    :try_start_1
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v13, v2

    if-eqz v13, :cond_4

    :goto_3
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v0

    :goto_4
    invoke-interface {v13}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_4
    if-eqz v13, :cond_6

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v2, v14

    move-object v4, v15

    move-object/from16 v3, v16

    goto :goto_7

    :catch_1
    move-exception v0

    move-object v2, v14

    move-object v4, v15

    move-object/from16 v3, v16

    :goto_5
    :try_start_2
    const-string v5, "EcppStorageHelper"

    const-string v6, "could not execute getDataByFields"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v13, :cond_5

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v14, v2

    move-object/from16 v16, v3

    move-object v15, v4

    :cond_6
    :goto_6
    return-object v11

    :catchall_2
    move-exception v0

    :goto_7
    if-eqz v13, :cond_7

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string v0, "EcppStorageHelper"

    const-string/jumbo v1, "onCreate ContainerPasswordPolicy-DPM db, Creates no new Table since KitKat"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    const-string v0, "EcppStorageHelper"

    const-string v1, "Downgrading not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4

    const-string v0, "EcppStorageHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUpgrade ContainerPasswordPolicy-DPM DB Helper from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    :try_start_0
    const-string v0, "ALTER TABLE PASSWORD_POLICY ADD COLUMN passwordMinimumSymbols INTEGER UNSIGNED DEFAULT 1; "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE PASSWORD_POLICY ADD COLUMN passwordHistory INTEGER UNSIGNED DEFAULT 0; "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE PASSWORD_POLICY ADD COLUMN passwordExpirationDate INTEGER UNSIGNED DEFAULT 0; "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE PASSWORD_POLICY ADD COLUMN maximumFailedPasswordsForWipe INTEGER UNSIGNED DEFAULT 0; "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :catch_1
    move-exception v0

    goto/16 :goto_6

    :cond_0
    :goto_0
    const/4 v0, 0x3

    if-ge p2, v0, :cond_1

    const-string v0, "ALTER TABLE PASSWORD_POLICY ADD COLUMN allowWifi INTEGER UNSIGNED DEFAULT 1; "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE PASSWORD_POLICY ADD COLUMN allowTextMessaging INTEGER UNSIGNED DEFAULT 1; "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE PASSWORD_POLICY ADD COLUMN allowInternetSharing INTEGER UNSIGNED DEFAULT 1; "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE PASSWORD_POLICY ADD COLUMN allowBluetoothMode INTEGER UNSIGNED DEFAULT 2; "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE PASSWORD_POLICY ADD COLUMN allowDesktopSync INTEGER UNSIGNED DEFAULT 1; "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE PASSWORD_POLICY ADD COLUMN allowIrDA INTEGER UNSIGNED DEFAULT 1; "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE PASSWORD_POLICY ADD COLUMN allowStorageCard INTEGER UNSIGNED DEFAULT 1; "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE PASSWORD_POLICY ADD COLUMN allowPOPIMAPEmail INTEGER UNSIGNED DEFAULT 1; "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x4

    if-ge p2, v0, :cond_2

    const-string v0, "ALTER TABLE PASSWORD_POLICY ADD COLUMN maximumTimeToLockPassword INTEGER UNSIGNED DEFAULT 0; "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE PASSWORD_POLICY ADD COLUMN passwordExpirationTimeout INTEGER UNSIGNED DEFAULT 0; "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x5

    if-ge p2, v0, :cond_3

    const-string v0, "ALTER TABLE PASSWORD_POLICY ADD COLUMN allowCamera INTEGER UNSIGNED DEFAULT 1; "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE PASSWORD_POLICY ADD COLUMN allowBrowser INTEGER UNSIGNED DEFAULT 1; "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v0, "CREATE TABLE PASSWORD_HISTORY( _index INTEGER PRIMARY KEY AUTOINCREMENT, containerID INTEGER NOT NULL, oldPasswordHashValue BLOB NOT NULL );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    goto :goto_2

    :catch_2
    move-exception v0

    :try_start_2
    const-string v1, "EcppStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PASSWORD_HISTORY upgrade failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_3
    move-exception v0

    const-string v1, "EcppStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PASSWORD_HISTORY upgrade failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :cond_3
    :goto_2
    const/4 v0, 0x6

    if-ge p2, v0, :cond_4

    :try_start_3
    const-string v0, "CREATE TABLE IF NOT EXISTS ACTIVE_PASSWORD_STATE( containerid INTEGER NOT NULL, quality INTEGER UNSIGNED DEFAULT 0, length INTEGER UNSIGNED DEFAULT 0, uppercase INTEGER UNSIGNED DEFAULT 0, lowercase INTEGER UNSIGNED DEFAULT 0, letters INTEGER UNSIGNED DEFAULT 0, numeric INTEGER UNSIGNED DEFAULT 0, nonletters INTEGER UNSIGNED DEFAULT 0, symbols INTEGER UNSIGNED DEFAULT 0, simplepassword INTEGER UNSIGNED DEFAULT 0 );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE ACTIVE_PASSWORD_STATE ADD COLUMN charactersequencelength INTEGER UNSIGNED DEFAULT 0; "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE ACTIVE_PASSWORD_STATE ADD COLUMN digitsequencelength INTEGER UNSIGNED DEFAULT 0; "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE ACTIVE_PASSWORD_STATE ADD COLUMN MaximumCharacteroccurrences INTEGER UNSIGNED DEFAULT 0; "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :goto_3
    goto :goto_4

    :catch_4
    move-exception v0

    :try_start_4
    const-string v1, "EcppStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTIVE_PASSWORD_STATEupgrade failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_5
    move-exception v0

    const-string v1, "EcppStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTIVE_PASSWORD_STATEupgrade failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    :goto_4
    const/4 v0, 0x7

    if-ge p2, v0, :cond_5

    const-string v0, "ALTER TABLE PASSWORD_POLICY ADD COLUMN maximumFailedPasswordsForDisable INTEGER UNSIGNED DEFAULT 0; "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_5
    const/16 v0, 0x8

    if-ge p2, v0, :cond_6

    const-string v0, "ALTER TABLE PASSWORD_POLICY ADD COLUMN maximumTimeToUnmount INTEGER UNSIGNED DEFAULT 0; "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_7

    :goto_5
    nop

    const-string v1, "EcppStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PASSWORD_POLICY upgrade failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :goto_6
    nop

    const-string v1, "EcppStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PASSWORD_POLICY upgrade failed  SQLException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_7
    nop

    :goto_8
    return-void
.end method

.method select(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 22

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/storage/EcppStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v18

    const/16 v19, 0x0

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p4, v2, v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v15, p2

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "=? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    new-array v13, v0, [Ljava/lang/String;

    aput-object p3, v13, v1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    goto :goto_1

    :cond_0
    const/4 v14, 0x0

    const/4 v0, 0x0

    const/16 v17, 0x0

    move-object/from16 v9, v18

    move-object/from16 v10, p1

    move-object v11, v2

    move-object/from16 v12, v20

    move-object v15, v0

    move-object/from16 v16, p5

    invoke-virtual/range {v9 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    return-object v0

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method select(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11

    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EcppStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method
