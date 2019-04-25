.class public Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;
.super Ljava/lang/Object;
.source "EdmDLPStorageHelper.java"


# static fields
.field private static final MAX_LOG_NUM:I = 0x33

.field private static final TAG:Ljava/lang/String; = "DLP_EdmDLPStorageHelper"

.field private static final TYPE_CONFIG:I = 0x2

.field private static final TYPE_CONFIG_LOG:I = 0x5

.field private static mInstance:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEdmStorageProviderBase:Lcom/android/server/enterprise/storage/EdmStorageProviderBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mInstance:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mEdmStorageProviderBase:Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    iput-object v0, p0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mEdmStorageProviderBase:Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    iput-object p1, p0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getBooleanAuditValues(I)[Z
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Z

    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    :cond_0
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    aput-boolean v2, v0, v2

    :cond_1
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    :cond_2
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    :cond_3
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    aput-boolean v2, v0, v1

    :cond_4
    return-object v0
.end method

.method private getBooleanValues(I)[Z
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Z

    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    :cond_0
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    aput-boolean v2, v0, v2

    :cond_1
    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;
    .locals 2

    const-class v0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mInstance:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mInstance:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    :cond_0
    sget-object v1, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mInstance:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getIntValue(ZZ)I
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    or-int/lit8 v0, v0, 0x1

    :cond_0
    if-eqz p2, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    return v0
.end method

.method private getList(Landroid/content/ContentValues;[Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentValues;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mEdmStorageProviderBase:Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    const-string v4, "IRMServiceInformationTable"

    invoke-virtual {v3, v4, p2, p1, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v0, v1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v1

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/samsung/android/knox/AppIdentity;

    invoke-direct {v1}, Lcom/samsung/android/knox/AppIdentity;-><init>()V

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/knox/AppIdentity;->setPackageName(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/knox/AppIdentity;->setSignature(Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v1

    :try_start_1
    const-string v3, "DLP_EdmDLPStorageHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception occurred accessing Enterprise db "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_2
    return-object v2

    :goto_3
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    :cond_2
    throw v1
.end method

.method private isConfigEnabled([Ljava/lang/String;I)I
    .locals 7

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "userid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "type"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mEdmStorageProviderBase:Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    const-string v5, "IRMServiceInformationTable"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p1, v0, v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v1, v4

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x0

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_3

    :catch_0
    move-exception v2

    :try_start_1
    const-string v4, "DLP_EdmDLPStorageHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception occurred accessing Enterprise db "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    :goto_2
    return v3

    :goto_3
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x0

    :cond_3
    throw v2
.end method


# virtual methods
.method public addDumpLog(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "adminUid"

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v1, "userid"

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "fileUri"

    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "irmProvider"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "rights"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mEdmStorageProviderBase:Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    const-string v2, "IRMDocumentRightsTable"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->removeDumpLog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DLP_EdmDLPStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addDumpLog : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public addWhitelistApps(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/dlp/DLPPackageInfo;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-eqz p2, :cond_7

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/dlp/DLPPackageInfo;

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    iget-object v6, v5, Lcom/samsung/android/knox/dlp/DLPPackageInfo;->appIdentity:Lcom/samsung/android/knox/AppIdentity;

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    iget-object v10, v5, Lcom/samsung/android/knox/dlp/DLPPackageInfo;->extras:Landroid/os/Bundle;

    const/4 v11, 0x1

    if-eqz v10, :cond_1

    iget-object v10, v5, Lcom/samsung/android/knox/dlp/DLPPackageInfo;->extras:Landroid/os/Bundle;

    const-string v12, "Type"

    invoke-virtual {v10, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    if-ne v10, v11, :cond_1

    const/4 v9, 0x1

    :cond_1
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "addWhitelistApps => "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", isConsumer: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v1, v10}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->addDumpLog(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v7, v8}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->isListAppsContainsDLPPackageInfo(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    const/4 v13, 0x0

    if-eqz v12, :cond_3

    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    const-string v14, "adminUid"

    iget v15, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v11, v1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    move-object/from16 v16, v4

    invoke-static {v15, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v14, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v3, "userid"

    iget v4, v1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "data_text1"

    invoke-virtual {v12, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "data_text2"

    invoke-virtual {v3, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "type"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v4, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v4, v0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mEdmStorageProviderBase:Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    const-string v11, "IRMServiceInformationTable"

    invoke-virtual {v4, v11, v3, v12}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    move-result v4

    if-lez v4, :cond_2

    const/4 v13, 0x1

    nop

    :cond_2
    or-int/2addr v2, v13

    goto :goto_1

    :cond_3
    move-object/from16 v16, v4

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "adminUid"

    iget v11, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v12, v1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v11, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v3, v4, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v4, "userid"

    iget v11, v1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v4, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v4, "type"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v4, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "data_text1"

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "data_text2"

    invoke-virtual {v3, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v4, v0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mEdmStorageProviderBase:Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    const-string v11, "IRMServiceInformationTable"

    invoke-virtual {v4, v11, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v11

    const-wide/16 v14, 0x0

    cmp-long v4, v11, v14

    if-lez v4, :cond_5

    const/4 v13, 0x1

    nop

    :cond_5
    or-int/2addr v2, v13

    goto :goto_1

    :cond_6
    move-object/from16 v16, v4

    :goto_1
    move-object/from16 v4, v16

    goto/16 :goto_0

    :cond_7
    return v2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 22

    move-object/from16 v1, p2

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    const-string v0, "DUMP OF DLP Information :"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x0

    move v7, v0

    :try_start_0
    new-instance v8, Lcom/android/server/enterprise/storage/EdmStorageProvider;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    move-object/from16 v9, p0

    :try_start_1
    iget-object v10, v9, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mContext:Landroid/content/Context;

    invoke-direct {v8, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    const-string v10, "data_int1"

    const-string v11, "data_int2"

    const-string v12, "data_int3"

    filled-new-array {v10, v11, v12}, [Ljava/lang/String;

    move-result-object v10

    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v12, "type"

    const/4 v13, 0x2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v12, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v12, "IRMServiceInformationTable"

    const/4 v14, 0x0

    invoke-virtual {v8, v12, v10, v11, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    move-object v2, v12

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    const-string v12, " isActivated  isLocked  expiry_after"

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    const/4 v12, 0x1

    if-eqz v2, :cond_0

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v15

    if-eqz v15, :cond_0

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_1

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " "

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "            "

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "         "

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    const/4 v14, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_c

    :cond_0
    :try_start_3
    const-string v14, "  Cursor is null"

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v14, "userid"

    const-string/jumbo v15, "type"

    const-string v13, "data_text1"

    filled-new-array {v14, v15, v13}, [Ljava/lang/String;

    move-result-object v13

    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v15, "type"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v14, v15, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v12, "IRMServiceInformationTable"

    const/4 v15, 0x0

    invoke-virtual {v8, v12, v13, v14, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    move-object v3, v12

    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v15, "type"
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    move-object/from16 v16, v4

    const/4 v0, 0x1

    :try_start_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v15, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "IRMServiceInformationTable"

    const/4 v4, 0x0

    invoke-virtual {v8, v0, v13, v12, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    move-object v4, v0

    if-eqz v3, :cond_2

    :try_start_5
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v6, 0x1

    :cond_2
    if-eqz v4, :cond_3

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_9

    if-eqz v0, :cond_3

    const/4 v7, 0x1

    :cond_3
    :try_start_6
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    const-string v0, " userID isConsumer  packageName"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    if-nez v6, :cond_4

    if-nez v7, :cond_4

    :try_start_7
    const-string v0, "  Cursor is null"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/database/SQLException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_9

    move-object/from16 v17, v5

    goto/16 :goto_3

    :cond_4
    if-eqz v6, :cond_5

    :goto_1
    :try_start_8
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8
    .catch Landroid/database/SQLException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object/from16 v17, v5

    const/4 v15, 0x0

    :try_start_9
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "    "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "           "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x2

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v5, v17

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object/from16 v17, v5

    goto/16 :goto_8

    :catch_1
    move-exception v0

    move-object/from16 v17, v5

    goto/16 :goto_9

    :cond_5
    move-object/from16 v17, v5

    if-eqz v7, :cond_6

    :goto_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "    "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "           "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/database/SQLException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v5, v17

    goto/16 :goto_e

    :catch_2
    move-exception v0

    move-object/from16 v5, v17

    goto/16 :goto_c

    :cond_6
    :goto_3
    :try_start_a
    const-string/jumbo v0, "userid"

    const-string/jumbo v5, "fileUri"

    const-string/jumbo v15, "irmProvider"

    filled-new-array {v0, v5, v15}, [Ljava/lang/String;

    move-result-object v0

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v15, "rights"
    :try_end_a
    .catch Landroid/database/SQLException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    move/from16 v18, v6

    const/4 v6, 0x5

    :try_start_b
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v15, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "IRMDocumentRightsTable"

    const/4 v15, 0x0

    invoke-virtual {v8, v6, v0, v5, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_b
    .catch Landroid/database/SQLException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    const-string v15, " userID time                    log"

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz v6, :cond_8

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v15

    if-eqz v15, :cond_8

    :goto_4
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_7

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v0

    const-string v0, " "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v20, v5

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "    "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v5, v20

    goto :goto_4

    :cond_7
    move-object/from16 v19, v0

    move-object/from16 v20, v5

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_5

    :cond_8
    move-object/from16 v19, v0

    move-object/from16 v20, v5

    const-string v0, "  Cursor is null"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/database/SQLException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :goto_5
    if-eqz v2, :cond_9

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const/4 v2, 0x0

    :cond_9
    if-eqz v3, :cond_a

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    const/4 v3, 0x0

    :cond_a
    if-eqz v4, :cond_b

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    const/4 v4, 0x0

    :cond_b
    if-eqz v6, :cond_10

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    goto/16 :goto_d

    :catchall_2
    move-exception v0

    move-object v5, v6

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v5, v6

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object/from16 v5, v17

    :goto_6
    move/from16 v6, v18

    goto/16 :goto_e

    :catch_4
    move-exception v0

    move-object/from16 v5, v17

    :goto_7
    move/from16 v6, v18

    goto :goto_c

    :catchall_4
    move-exception v0

    move/from16 v18, v6

    move-object/from16 v5, v17

    goto/16 :goto_e

    :catch_5
    move-exception v0

    move/from16 v18, v6

    move-object/from16 v5, v17

    goto :goto_c

    :catchall_5
    move-exception v0

    move-object/from16 v17, v5

    move/from16 v18, v6

    goto/16 :goto_e

    :catch_6
    move-exception v0

    move-object/from16 v17, v5

    move/from16 v18, v6

    goto :goto_c

    :catchall_6
    move-exception v0

    move-object/from16 v17, v5

    move-object/from16 v4, v16

    :goto_8
    goto :goto_e

    :catch_7
    move-exception v0

    move-object/from16 v17, v5

    move-object/from16 v4, v16

    :goto_9
    goto :goto_c

    :catchall_7
    move-exception v0

    goto :goto_a

    :catch_8
    move-exception v0

    goto :goto_b

    :catchall_8
    move-exception v0

    move-object/from16 v9, p0

    :goto_a
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    goto :goto_e

    :catch_9
    move-exception v0

    move-object/from16 v9, p0

    :goto_b
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    :goto_c
    :try_start_d
    const-string v8, "DLP_EdmDLPStorageHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception occurred accessing Enterprise db "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    if-eqz v2, :cond_c

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    move-object v2, v0

    :cond_c
    if-eqz v3, :cond_d

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    move-object v3, v0

    :cond_d
    if-eqz v4, :cond_e

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    move-object v4, v0

    :cond_e
    if-eqz v5, :cond_f

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    move/from16 v18, v6

    move-object v6, v0

    goto :goto_d

    :cond_f
    move/from16 v18, v6

    move-object v6, v5

    :cond_10
    :goto_d
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    return-void

    :catchall_9
    move-exception v0

    :goto_e
    if-eqz v2, :cond_11

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const/4 v2, 0x0

    :cond_11
    if-eqz v3, :cond_12

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    const/4 v3, 0x0

    :cond_12
    if-eqz v4, :cond_13

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    const/4 v4, 0x0

    :cond_13
    if-eqz v5, :cond_14

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    const/4 v5, 0x0

    :cond_14
    throw v0
.end method

.method public getAppType(ILjava/lang/String;)I
    .locals 9

    const-string/jumbo v0, "type"

    const-string v1, "data_text2"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v4, "userid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "data_text1"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v5, v4

    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mEdmStorageProviderBase:Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    const-string v7, "IRMServiceInformationTable"

    invoke-virtual {v6, v7, v0, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v5, v4

    if-eqz v5, :cond_4

    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    const/4 v4, 0x0

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v1, v6

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v6, :cond_1

    nop

    if-eqz v5, :cond_0

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    const/4 v5, 0x0

    :cond_0
    return v1

    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mContext:Landroid/content/Context;

    const-string v7, "android"

    invoke-static {v6, v7, v4, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v4, p2, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->comparePackageSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v8, :cond_3

    nop

    :try_start_3
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v5, :cond_2

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    const/4 v5, 0x0

    :cond_2
    return v1

    :cond_3
    :try_start_4
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    goto :goto_0

    :catchall_0
    move-exception v8

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_4
    if-eqz v5, :cond_5

    :goto_1
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    const/4 v5, 0x0

    goto :goto_2

    :catchall_1
    move-exception v4

    goto :goto_3

    :catch_0
    move-exception v4

    :try_start_5
    const-string v6, "DLP_EdmDLPStorageHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception occurred accessing Enterprise db "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v5, :cond_5

    goto :goto_1

    :cond_5
    :goto_2
    const/4 v4, -0x1

    return v4

    :goto_3
    if-eqz v5, :cond_6

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    const/4 v5, 0x0

    :cond_6
    throw v4
.end method

.method public getDLPConfig(Lcom/samsung/android/knox/ContextInfo;)Landroid/os/Bundle;
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v0, "DLP_EdmDLPStorageHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "getDefaultPolicy() "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v2, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "data_int1"

    const-string v14, "data_int2"

    const-string v15, "data_int3"

    const-string v16, "data_int4"

    const-string/jumbo v17, "option1"

    const-string v18, "data_text1"

    const-string v19, "data_text2"

    filled-new-array/range {v13 .. v19}, [Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    move-object v13, v0

    const-string/jumbo v0, "type"

    const/4 v14, 0x2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v0, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v0, "userid"

    iget v15, v2, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v0, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v0, 0x0

    move-object v15, v0

    :try_start_0
    iget-object v14, v1, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mEdmStorageProviderBase:Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    const-string v0, "IRMServiceInformationTable"

    const/4 v2, 0x0

    invoke-virtual {v14, v0, v12, v13, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v15, v0

    if-eqz v15, :cond_2

    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v4, v0

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    move v5, v0

    const/4 v2, 0x2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    move v9, v0

    const/4 v2, 0x3

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    move v3, v0

    const/4 v2, 0x4

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    move v10, v0

    const/4 v0, 0x5

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    const/4 v0, 0x6

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v0

    :cond_2
    if-eqz v15, :cond_4

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    const/4 v15, 0x0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "DLP_EdmDLPStorageHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move/from16 v20, v3

    :try_start_2
    const-string v3, "Exception occurred accessing Enterprise db "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v15, :cond_3

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    const/4 v15, 0x0

    :cond_3
    move/from16 v3, v20

    :cond_4
    :goto_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {v1, v3}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getBooleanAuditValues(I)[Z

    move-result-object v2

    invoke-direct {v1, v10}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getBooleanValues(I)[Z

    move-result-object v8

    const-string v11, "CREATE"

    const/4 v14, 0x0

    aget-boolean v1, v2, v14

    invoke-virtual {v0, v11, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "OPEN"

    const/4 v11, 0x1

    aget-boolean v14, v2, v11

    invoke-virtual {v0, v1, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "RENAME"

    const/4 v11, 0x2

    aget-boolean v11, v2, v11

    invoke-virtual {v0, v1, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "EXPIRED"

    const/4 v11, 0x3

    aget-boolean v11, v2, v11

    invoke-virtual {v0, v1, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "UNAUTHORIZED"

    const/4 v11, 0x4

    aget-boolean v11, v2, v11

    invoke-virtual {v0, v1, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "AUDIT"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "Activate"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "Lock"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "Extensions"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Domains"

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "NETWORK"

    const/4 v11, 0x0

    aget-boolean v11, v8, v11

    invoke-virtual {v0, v1, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "CLIPBOARD"

    const/4 v11, 0x1

    aget-boolean v11, v8, v11

    invoke-virtual {v0, v1, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-lez v9, :cond_5

    const-string v1, "ExpiryAfter"

    invoke-virtual {v0, v1, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_5
    return-object v0

    :catchall_1
    move-exception v0

    move/from16 v3, v20

    goto :goto_3

    :catchall_2
    move-exception v0

    move/from16 v20, v3

    :goto_3
    if-eqz v15, :cond_6

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    const/4 v15, 0x0

    :cond_6
    throw v0
.end method

.method public getPolicyConfigOwners()Landroid/util/SparseLongArray;
    .locals 8

    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    const-string/jumbo v1, "userid"

    const-string v2, "adminUid"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "type"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v3, 0x0

    move-object v4, v3

    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mEdmStorageProviderBase:Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    const-string v6, "IRMServiceInformationTable"

    invoke-virtual {v5, v6, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v4, v3

    :goto_0
    if-eqz v4, :cond_0

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v0, v3, v5, v6}, Landroid/util/SparseLongArray;->put(IJ)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v4, :cond_1

    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    const/4 v4, 0x0

    goto :goto_2

    :catchall_0
    move-exception v3

    goto :goto_3

    :catch_0
    move-exception v3

    :try_start_1
    const-string v5, "DLP_EdmDLPStorageHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception occurred accessing Enterprisde db "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    :goto_2
    return-object v0

    :goto_3
    if-eqz v4, :cond_2

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    const/4 v4, 0x0

    :cond_2
    throw v3
.end method

.method public getTime()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWhitelistApps(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/dlp/DLPPackageInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getWhitelistApps(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getWhitelistApps(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v5

    if-eqz v1, :cond_2

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "Type"

    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/knox/AppIdentity;

    new-instance v7, Lcom/samsung/android/knox/dlp/DLPPackageInfo;

    invoke-direct {v7, v6, v5}, Lcom/samsung/android/knox/dlp/DLPPackageInfo;-><init>(Lcom/samsung/android/knox/AppIdentity;Landroid/os/Bundle;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v5, "Type"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/AppIdentity;

    new-instance v6, Lcom/samsung/android/knox/dlp/DLPPackageInfo;

    invoke-direct {v6, v5, v0}, Lcom/samsung/android/knox/dlp/DLPPackageInfo;-><init>(Lcom/samsung/android/knox/AppIdentity;Landroid/os/Bundle;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object v4
.end method

.method public getWhitelistApps(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;"
        }
    .end annotation

    const-string v0, "data_text1"

    const-string v1, "data_text2"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "userid"

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getList(Landroid/content/ContentValues;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public getWhitelistApps(Lcom/samsung/android/knox/ContextInfo;IJ)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "IJ)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;"
        }
    .end annotation

    const-string v0, "data_text1"

    const-string v1, "data_text2"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "userid"

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "adminUid"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getList(Landroid/content/ContentValues;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public isActivated(I)I
    .locals 2

    const-string v0, "data_int1"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->isConfigEnabled([Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public isListAppsContainsDLPPackageInfo(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const-string v0, "data_text1"

    const-string v1, "data_text2"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "userid"

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "data_text1"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object v3, v2

    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mEdmStorageProviderBase:Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    const-string v5, "IRMServiceInformationTable"

    invoke-virtual {v4, v5, v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v3, v2

    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v2
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    const/4 v3, 0x0

    :cond_0
    return v2

    :cond_1
    if-eqz v3, :cond_2

    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    const/4 v3, 0x0

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_1
    const-string v4, "DLP_EdmDLPStorageHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception occurred accessing Enterprise db "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v2, 0x0

    return v2

    :goto_2
    if-eqz v3, :cond_3

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    const/4 v3, 0x0

    :cond_3
    throw v2
.end method

.method public isLocked(I)I
    .locals 2

    const-string v0, "data_int2"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->isConfigEnabled([Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public removeDBEntries(J)I
    .locals 3

    const-string v0, "DLP_EdmDLPStorageHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoveDBEntries called for adminUID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "adminUid"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v1, p0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mEdmStorageProviderBase:Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    const-string v2, "IRMServiceInformationTable"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1

    return v1
.end method

.method public removeDumpLog()V
    .locals 8

    const/4 v0, 0x0

    move-object v1, v0

    :try_start_0
    const-string/jumbo v2, "userid"

    const-string/jumbo v3, "fileUri"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v4, "rights"

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v4, p0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mEdmStorageProviderBase:Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    const-string v5, "IRMDocumentRightsTable"

    invoke-virtual {v4, v5, v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v1, v0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/16 v4, 0x33

    if-lt v0, v4, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v4, 0x1

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v6, "userid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v6, "fileUri"

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mEdmStorageProviderBase:Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    const-string v7, "IRMDocumentRightsTable"

    invoke-virtual {v6, v7, v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :cond_0
    if-eqz v1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "DLP_EdmDLPStorageHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception occurred accessing Enterprise db "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x0

    :cond_1
    return-void

    :goto_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x0

    :cond_2
    throw v0
.end method

.method public removeWhitelistApps(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeWhitelistApps => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->addDumpLog(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "adminUid"

    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v4, "userid"

    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "data_text1"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mEdmStorageProviderBase:Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    const-string v5, "IRMServiceInformationTable"

    invoke-virtual {v4, v5, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v4

    add-int/2addr v0, v4

    :cond_0
    goto :goto_0

    :cond_1
    if-lez v0, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public setDLPConfig(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)Z
    .locals 13

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "adminUid"

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v5, "type"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v5, "userid"

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-nez p2, :cond_0

    const-string v5, "DLP_EdmDLPStorageHelper"

    const-string/jumbo v6, "setDefaultPolicy() defaultPolicy is null"

    invoke-static {v5, v6}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto/16 :goto_6

    :cond_0
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "Activate"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "Activate"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "data_int1"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "DLP_EdmDLPStorageHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setDLPConfig:isActivated: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v6, "Lock"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "Lock"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "data_int2"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "DLP_EdmDLPStorageHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setDLPConfig:isLocked: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v6, "ExpiryAfter"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "ExpiryAfter"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v6, "data_int3"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "DLP_EdmDLPStorageHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setDLPConfig:expiry_after: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/16 v6, 0x10e

    invoke-static {v6}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isKnoxVersionSupported(I)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "Extensions"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "Extensions"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "data_text1"

    invoke-virtual {v5, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "DLP_EdmDLPStorageHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setDLPConfig:extensions: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v6, "DLP_EdmDLPStorageHelper"

    const-string v7, "Knox version not supported for extension"

    invoke-static {v6, v7}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    const/16 v6, 0x118

    invoke-static {v6}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isKnoxVersionSupported(I)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "Domains"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "Domains"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "data_text2"

    invoke-virtual {v5, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "DLP_EdmDLPStorageHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setDLPConfig:domains: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string v7, "DLP_EdmDLPStorageHelper"

    const-string v8, "Knox version not supported for domains list"

    invoke-static {v7, v8}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_1
    invoke-static {v6}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isKnoxVersionSupported(I)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "AUDIT"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v6, "AUDIT"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "data_int4"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "DLP_EdmDLPStorageHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setDLPConfig:Audit Integer: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    const-string v6, "DLP_EdmDLPStorageHelper"

    const-string v7, "Knox version not supported for DLP Audit events."

    invoke-static {v6, v7}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_2
    const-string v6, "NETWORK"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    const-string v6, "CLIPBOARD"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    :cond_a
    const/4 v6, 0x0

    const-string v7, "NETWORK"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    const-string v7, "NETWORK"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    goto :goto_3

    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getDLPConfig(Lcom/samsung/android/knox/ContextInfo;)Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "NETWORK"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    :goto_3
    const-string v8, "CLIPBOARD"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    const-string v8, "CLIPBOARD"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    goto :goto_4

    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getDLPConfig(Lcom/samsung/android/knox/ContextInfo;)Landroid/os/Bundle;

    move-result-object v6

    const-string v8, "CLIPBOARD"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    :goto_4
    invoke-direct {p0, v7, v8}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getIntValue(ZZ)I

    move-result v9

    const-string/jumbo v10, "option1"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v10, "DLP_EdmDLPStorageHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setDLPConfig:NetworkAccess: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " ClipboardAccess: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " setDLPConfig:Policy Integer: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    invoke-virtual {v5}, Landroid/content/ContentValues;->size()I

    move-result v6

    if-lez v6, :cond_e

    iget-object v6, p0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mEdmStorageProviderBase:Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    const-string v7, "IRMServiceInformationTable"

    invoke-virtual {v6, v7, v5, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v0

    goto :goto_5

    :cond_e
    const/4 v0, 0x0

    :goto_5
    const-string v6, "DLP_EdmDLPStorageHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setDLPConfig() set : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setDLPConfig => "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p1, v6}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->addDumpLog(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :goto_6
    return v0
.end method

.method public updateAdminUid(Lcom/samsung/android/knox/ContextInfo;J)I
    .locals 5

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "adminUid"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v1, "userid"

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "adminUid"

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v2, p0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mEdmStorageProviderBase:Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    const-string v3, "IRMServiceInformationTable"

    invoke-virtual {v2, v3, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    move-result v2

    return v2
.end method
