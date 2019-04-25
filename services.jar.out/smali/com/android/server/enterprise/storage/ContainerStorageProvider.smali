.class public Lcom/android/server/enterprise/storage/ContainerStorageProvider;
.super Ljava/lang/Object;
.source "ContainerStorageProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/storage/ContainerStorageProvider$ContainerDbErrorHandler;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final TAG:Ljava/lang/String; = "ContainerStorageProvider"

.field private static mQuotesPreferencesProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mSelfInstance:Lcom/android/server/enterprise/storage/ContainerStorageProvider;

.field private static sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDbHelper:Lcom/android/server/enterprise/storage/ContainerStorageHelper;

.field mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    nop

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/storage/ContainerStorageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sput-object v0, Lcom/android/server/enterprise/storage/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    sput-object v0, Lcom/android/server/enterprise/storage/ContainerStorageProvider;->mSelfInstance:Lcom/android/server/enterprise/storage/ContainerStorageProvider;

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/server/enterprise/storage/ContainerStorageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v0, Lcom/android/server/enterprise/storage/ContainerStorageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/android/server/enterprise/storage/ContainerDBConstants;->AUTHORITY:Ljava/lang/String;

    sget-object v2, Lcom/android/server/enterprise/storage/ContainerDBConstants;->CONTAINER_TABLE_NAME:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/storage/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    sget-object v0, Lcom/android/server/enterprise/storage/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/enterprise/storage/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    const-string v1, "containerid"

    const-string v2, "containerid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/enterprise/storage/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    const-string v1, "admin_uid"

    const-string v2, "admin_uid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/enterprise/storage/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "packages"

    const-string/jumbo v2, "packages"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/enterprise/storage/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "original_signature"

    const-string/jumbo v2, "original_signature"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/enterprise/storage/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "installation_source"

    const-string/jumbo v2, "installation_source"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/enterprise/storage/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    const-string v1, "app_uid"

    const-string v2, "app_uid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/enterprise/storage/ContainerStorageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/android/server/enterprise/storage/ContainerDBConstants;->AUTHORITY:Ljava/lang/String;

    sget-object v2, Lcom/android/server/enterprise/storage/ContainerDBConstants;->CONTAINER_TABLE_ACTIVESTATUS_NAME:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/storage/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    const-string v1, "activestatus"

    const-string v2, "activestatus"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/enterprise/storage/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "password"

    const-string/jumbo v2, "password"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/enterprise/storage/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "passwordstatus"

    const-string/jumbo v2, "passwordstatus"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/enterprise/storage/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "email"

    const-string/jumbo v2, "email"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/enterprise/storage/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "name"

    const-string/jumbo v2, "name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/enterprise/storage/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "securitytext"

    const-string/jumbo v2, "securitytext"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/enterprise/storage/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "securityicon"

    const-string/jumbo v2, "securityicon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/enterprise/storage/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    const-string v1, "androidid"

    const-string v2, "androidid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/enterprise/storage/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "failedpasswordattempts"

    const-string/jumbo v2, "failedpasswordattempts"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/enterprise/storage/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "locktype"

    const-string/jumbo v2, "locktype"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/enterprise/storage/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    const-string v1, "containertype"

    const-string v2, "containertype"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/enterprise/storage/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    const-string v1, "containerLockOnScreenLock"

    const-string v2, "containerLockOnScreenLock"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/enterprise/storage/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    const-string v1, "containerPwdVerfyOnModeChange"

    const-string v2, "containerPwdVerfyOnModeChange"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/enterprise/storage/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    const-string v1, "deviceFirmwareVersion"

    const-string v2, "deviceFirmwareVersion"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/enterprise/storage/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "new_signature_creationtime"

    const-string/jumbo v2, "new_signature_creationtime"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/enterprise/storage/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "orig_signature"

    const-string/jumbo v2, "orig_signature"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/enterprise/storage/ContainerStorageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/android/server/enterprise/storage/ContainerDBConstants;->AUTHORITY:Ljava/lang/String;

    sget-object v2, Lcom/android/server/enterprise/storage/ContainerDBConstants;->CERTIFICATE_MANAGER_TABLE_NAME:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/storage/ContainerStorageProvider;->mDbHelper:Lcom/android/server/enterprise/storage/ContainerStorageHelper;

    iput-object v0, p0, Lcom/android/server/enterprise/storage/ContainerStorageProvider;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/enterprise/storage/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v0, Lcom/android/server/enterprise/storage/ContainerStorageProvider$ContainerDbErrorHandler;

    invoke-direct {v0}, Lcom/android/server/enterprise/storage/ContainerStorageProvider$ContainerDbErrorHandler;-><init>()V

    invoke-static {p1, v0}, Lcom/android/server/enterprise/storage/ContainerStorageHelper;->getInstance(Landroid/content/Context;Landroid/database/DatabaseErrorHandler;)Lcom/android/server/enterprise/storage/ContainerStorageHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/storage/ContainerStorageProvider;->mDbHelper:Lcom/android/server/enterprise/storage/ContainerStorageHelper;

    iput-object p1, p0, Lcom/android/server/enterprise/storage/ContainerStorageProvider;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/enterprise/storage/ContainerStorageProvider;->mDbHelper:Lcom/android/server/enterprise/storage/ContainerStorageHelper;

    invoke-virtual {v0}, Lcom/android/server/enterprise/storage/ContainerStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/storage/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method private checkIfNullUriMatcher(Landroid/net/Uri;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    sget-object v1, Lcom/android/server/enterprise/storage/ContainerStorageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const-string v1, "ContainerStorageProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uri is null? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    if-nez p1, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v0

    :goto_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " uri matcher is null? "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/enterprise/storage/ContainerStorageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    if-nez v4, :cond_3

    move v0, v3

    nop

    :cond_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " in query method"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private getCursorForQuery(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 11

    move-object v1, p0

    iget-object v0, v1, Lcom/android/server/enterprise/storage/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, v1, Lcom/android/server/enterprise/storage/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v10, v2

    :try_start_0
    iget-object v0, v1, Lcom/android/server/enterprise/storage/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    iget-object v3, v1, Lcom/android/server/enterprise/storage/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v10, v0

    iget-object v0, v1, Lcom/android/server/enterprise/storage/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    iget-object v0, v1, Lcom/android/server/enterprise/storage/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "ContainerStorageProvider"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    nop

    return-object v10

    :goto_1
    throw v0

    :cond_0
    iget-object v0, v1, Lcom/android/server/enterprise/storage/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_2

    const-string v0, "ContainerStorageProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mSQLiteDataBaseObj is null? true  mSQLiteQueryBuilderObj is null? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_1

    move v3, v4

    nop

    :cond_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mSQLiteDataBaseObj is open? null"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    const-string v0, "ContainerStorageProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mSQLiteDataBaseObj is null false  mSQLiteQueryBuilderObj is null? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_3

    move v3, v4

    nop

    :cond_3
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mSQLiteDataBaseObj is open? "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/enterprise/storage/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const-string v0, "ContainerStorageProvider"

    const-string/jumbo v3, "returning null cursor"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/storage/ContainerStorageProvider;
    .locals 2

    const-class v0, Lcom/android/server/enterprise/storage/ContainerStorageProvider;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/storage/ContainerStorageProvider;->mSelfInstance:Lcom/android/server/enterprise/storage/ContainerStorageProvider;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/enterprise/storage/ContainerStorageProvider;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/storage/ContainerStorageProvider;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/enterprise/storage/ContainerStorageProvider;->mSelfInstance:Lcom/android/server/enterprise/storage/ContainerStorageProvider;

    :cond_0
    sget-object v1, Lcom/android/server/enterprise/storage/ContainerStorageProvider;->mSelfInstance:Lcom/android/server/enterprise/storage/ContainerStorageProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getSQLiteQueryBuilderObj(Landroid/net/Uri;)Landroid/database/sqlite/SQLiteQueryBuilder;
    .locals 2

    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/storage/ContainerStorageProvider;->getTableNameForUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/storage/ContainerStorageProvider;->updateBuilderObj(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;)V

    return-object v0
.end method

.method private getTableNameForUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/android/server/enterprise/storage/ContainerStorageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v0, "ContainerStorageProvider"

    const-string v1, "certificate manager database table"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/enterprise/storage/ContainerDBConstants;->CERTIFICATE_MANAGER_TABLE_NAME:Ljava/lang/String;

    return-object v0

    :pswitch_1
    const-string v0, "ContainerStorageProvider"

    const-string v1, "active status database"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/enterprise/storage/ContainerDBConstants;->CONTAINER_TABLE_ACTIVESTATUS_NAME:Ljava/lang/String;

    return-object v0

    :pswitch_2
    const-string v0, "ContainerStorageProvider"

    const-string v1, "container database"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/enterprise/storage/ContainerDBConstants;->CONTAINER_TABLE_NAME:Ljava/lang/String;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    monitor-enter p0

    nop

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/storage/ContainerStorageProvider;->checkIfNullUriMatcher(Landroid/net/Uri;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/storage/ContainerStorageProvider;->getSQLiteQueryBuilderObj(Landroid/net/Uri;)Landroid/database/sqlite/SQLiteQueryBuilder;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/storage/ContainerStorageProvider;->getCursorForQuery(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private returnCursorAsPerColumnName([Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    move-object v0, p1

    array-length v2, v0

    if-lez v2, :cond_0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p2

    move-object v4, v0

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/storage/ContainerStorageProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1

    :cond_0
    const-string v2, "ContainerStorageProvider"

    const-string/jumbo v3, "projection object is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    const-string v2, "ContainerStorageProvider"

    const-string v3, "Column name is null in returnCursorAsPerColumnName"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private updateBuilderObj(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "ContainerStorageProvider"

    const-string/jumbo v1, "updatebuilderobj"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/enterprise/storage/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getPackageNames(I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "containerid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "packages"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lcom/android/server/enterprise/storage/ContainerDBConstants;->CONTAINER_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v1, v3, v0}, Lcom/android/server/enterprise/storage/ContainerStorageProvider;->returnCursorAsPerColumnName([Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v4, "ContainerStorageProvider"

    const-string/jumbo v5, "getPackageNamescall is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-object v2

    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_2
    const-string/jumbo v4, "packages"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    const-string v5, "ContainerStorageProvider"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const-string v5, "ContainerStorageProvider"

    const-string/jumbo v6, "getPackageNames is not having any package in DB"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-object v2
.end method
