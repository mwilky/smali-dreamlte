.class Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;
.super Ljava/lang/Object;
.source "NetworkAnalyticsConfigStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;,
        Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;,
        Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "NetworkAnalytics:ConfigStore"

.field private static mInstance:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;


# instance fields
.field private activationMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;",
            ">;"
        }
    .end annotation
.end field

.field private adminToProfileMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;",
            ">;>;"
        }
    .end annotation
.end field

.field private mStorageHelper:Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;

.field private profileMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    sput-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->DBG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->mInstance:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->profileMap:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->adminToProfileMap:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->activationMap:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->mStorageHelper:Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;

    return-void
.end method

.method private constructor <init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->profileMap:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->adminToProfileMap:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->activationMap:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->mStorageHelper:Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;

    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->mStorageHelper:Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->profileMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->adminToProfileMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->activationMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static getInstance(Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->mInstance:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;)V

    sput-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->mInstance:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->mInstance:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    return-object v0
.end method

.method private initializeActivationTable()V
    .locals 12

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->mStorageHelper:Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;

    const-string v1, "NAPProfileTable"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "NetworkAnalytics:ConfigStore"

    const-string/jumbo v2, "initializeActivationTable: Initializing tables. Cursor present."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    const-string/jumbo v3, "profileName"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "op_userid"

    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "adminUid"

    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v6, "activeState"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string/jumbo v7, "flowType"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string/jumbo v8, "intervalValue"

    invoke-virtual {v2, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sget-boolean v9, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->DBG:Z

    if-eqz v9, :cond_1

    const-string v9, "NetworkAnalytics:ConfigStore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "initializeActivationTable: Config Profile = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->profileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v11, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v9, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;

    iget-object v10, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->profileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v10, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    invoke-direct {v9, p0, v10, v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;I)V

    invoke-virtual {v9, v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->setActivationState(I)V

    invoke-virtual {v9, v7}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->setActivationFlowType(I)V

    invoke-virtual {v9, v8}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->setActivationIntervalValue(I)V

    iget-object v10, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->activationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3, v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_2
    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "NetworkAnalytics:ConfigStore"

    const-string/jumbo v2, "initializeActivationTable: Exiting."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "NetworkAnalytics:ConfigStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while initialize activation table"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private initializeProfileTable()V
    .locals 20

    move-object/from16 v1, p0

    :try_start_0
    iget-object v0, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->mStorageHelper:Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;

    const-string v2, "NAPProfileTable"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v3, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    sget-boolean v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "NetworkAnalytics:ConfigStore"

    const-string/jumbo v3, "initializeProfileTable: Initializing tables. Cursor present."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    const-string/jumbo v4, "profileName"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "pkgName"

    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "pkgSign"

    invoke-virtual {v3, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "jsondata"

    invoke-virtual {v3, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "client_userid"

    invoke-virtual {v3, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const-string/jumbo v9, "op_userid"

    invoke-virtual {v3, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-string v10, "adminUid"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const-string/jumbo v11, "flags"

    invoke-virtual {v3, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const-string/jumbo v12, "flowType"

    invoke-virtual {v3, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const-string/jumbo v13, "intervalValue"

    invoke-virtual {v3, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    new-instance v14, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;

    invoke-direct {v14, v1, v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;Ljava/lang/String;)V

    invoke-virtual {v14, v9}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->opUserId(I)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;

    invoke-virtual {v14, v7}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->jsonString(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;

    invoke-virtual {v14, v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->packageName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;

    invoke-virtual {v14, v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->packageSignature(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;

    invoke-virtual {v14, v10}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->adminUid(I)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;

    invoke-virtual {v14, v11}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->flags(I)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;

    invoke-virtual {v14, v8}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->userId(I)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;

    invoke-virtual {v14, v12}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->flowTypeForProfile(I)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;

    invoke-virtual {v14, v13}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->intervalValueForProfile(I)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;

    invoke-virtual {v14}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->build()Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    move-result-object v15

    sget-boolean v16, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->DBG:Z

    if-eqz v16, :cond_1

    move-object/from16 v17, v0

    const-string v0, "NetworkAnalytics:ConfigStore"

    move-object/from16 v18, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v3

    const-string/jumbo v3, "initializeProfileTable: Config Profile = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    :goto_1
    iget-object v0, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->profileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v4, v15}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v2, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->adminToProfileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->adminToProfileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v3, v14, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    iget-object v2, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->adminToProfileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    nop

    move-object/from16 v0, v17

    move-object/from16 v2, v18

    goto/16 :goto_0

    :cond_3
    move-object/from16 v17, v0

    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->DBG:Z

    if-eqz v0, :cond_4

    const-string v0, "NetworkAnalytics:ConfigStore"

    const-string/jumbo v2, "initializeProfileTable: Exiting."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    goto :goto_3

    :catch_0
    move-exception v0

    const-string v2, "NetworkAnalytics:ConfigStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while initialize profile table"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method


# virtual methods
.method public activateProfile(ILjava/lang/String;II)I
    .locals 10

    const/4 v0, -0x1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->profileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    if-nez v1, :cond_0

    const-string v2, "NetworkAnalytics:ConfigStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeProfileFromDatabase: Profile name not found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x4

    return v2

    :cond_0
    invoke-static {p2, p3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "activeState"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v4, -0x3e7

    const/4 v5, 0x1

    if-ne v5, p4, :cond_1

    const-string/jumbo v6, "flowType"

    invoke-virtual {v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getFlowTypeForProfile()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_1
    if-nez p4, :cond_2

    const-string/jumbo v6, "flowType"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    :goto_0
    if-ne v5, p4, :cond_3

    const-string/jumbo v6, "intervalValue"

    invoke-virtual {v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getIntervalValueForProfile()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    :cond_3
    if-nez p4, :cond_4

    const-string/jumbo v6, "intervalValue"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_4
    :goto_1
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v7, "profileName"

    invoke-virtual {v6, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "op_userid"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v7, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->mStorageHelper:Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;

    const-string v8, "NAPProfileTable"

    invoke-virtual {v7, v8, v3, v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;->updateFields(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    move-result v7

    move v0, v7

    sget-boolean v7, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->DBG:Z

    if-eqz v7, :cond_5

    const-string v7, "NetworkAnalytics:ConfigStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "activateProfile: returnStatus = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-lez v0, :cond_f

    iget-object v7, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->activationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->activationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;

    invoke-virtual {v7, p4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->setActivationState(I)V

    if-ne v5, p4, :cond_6

    invoke-virtual {v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getFlowTypeForProfile()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->setActivationFlowType(I)V

    goto :goto_2

    :cond_6
    if-nez p4, :cond_7

    invoke-virtual {v7, v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->setActivationFlowType(I)V

    :cond_7
    :goto_2
    if-ne v5, p4, :cond_8

    invoke-virtual {v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getIntervalValueForProfile()I

    move-result v4

    invoke-virtual {v7, v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->setActivationIntervalValue(I)V

    goto :goto_3

    :cond_8
    if-nez p4, :cond_9

    invoke-virtual {v7, v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->setActivationIntervalValue(I)V

    :cond_9
    :goto_3
    const/4 v0, 0x0

    goto :goto_6

    :cond_a
    new-instance v7, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;

    iget-object v8, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->profileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    invoke-direct {v7, p0, v8, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;I)V

    invoke-virtual {v7, p4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->setActivationState(I)V

    if-ne v5, p4, :cond_b

    invoke-virtual {v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getFlowTypeForProfile()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->setActivationFlowType(I)V

    goto :goto_4

    :cond_b
    if-nez p4, :cond_c

    invoke-virtual {v7, v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->setActivationFlowType(I)V

    :cond_c
    :goto_4
    if-ne v5, p4, :cond_d

    invoke-virtual {v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getIntervalValueForProfile()I

    move-result v4

    invoke-virtual {v7, v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->setActivationIntervalValue(I)V

    goto :goto_5

    :cond_d
    if-nez p4, :cond_e

    invoke-virtual {v7, v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->setActivationIntervalValue(I)V

    :cond_e
    :goto_5
    iget-object v4, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->activationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v2, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    :cond_f
    :goto_6
    goto :goto_7

    :catch_0
    move-exception v1

    const-string v2, "NetworkAnalytics:ConfigStore"

    const-string v3, "activateProfile: Exception "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7
    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->DBG:Z

    if-eqz v1, :cond_10

    const-string v1, "NetworkAnalytics:ConfigStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activateProfile: final returnStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    return v0
.end method

.method public addProfileToDatabase(ILorg/json/JSONObject;Ljava/lang/String;I)I
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    if-gtz v1, :cond_0

    const-string v4, "NetworkAnalytics:ConfigStore"

    const-string v5, "addProfileToDatabase: Invalid admin userId"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x4

    return v4

    :cond_0
    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const-string/jumbo v9, "profile_name"

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v9, "package_name"

    invoke-virtual {v2, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v9, "package_signature"

    invoke-virtual {v2, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "flags"

    const/4 v11, -0x1

    invoke-virtual {v2, v9, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v11, "profileName"

    invoke-virtual {v9, v11, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "client_userid"

    const/16 v12, -0x3e7

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v9, v11, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v11, "op_userid"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v9, v11, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v11, "adminUid"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v9, v11, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v11, "pkgName"

    invoke-virtual {v9, v11, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "pkgSign"

    invoke-virtual {v9, v11, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "flags"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v9, v11, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v11, "jsondata"

    invoke-virtual {v9, v11, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "activeState"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v9, v11, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v11, "flowType"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v9, v11, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v11, "intervalValue"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v9, v11, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v11, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->mStorageHelper:Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;

    const-string v13, "NAPProfileTable"

    invoke-virtual {v11, v13, v10, v10, v9}, Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v10

    sget-boolean v11, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->DBG:Z

    if-eqz v11, :cond_1

    const-string v11, "NetworkAnalytics:ConfigStore"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "addProfileToDatabase: Added to database:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v10, :cond_5

    new-instance v11, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;

    invoke-direct {v11, v0, v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;Ljava/lang/String;)V

    move/from16 v13, p4

    invoke-virtual {v11, v13}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->opUserId(I)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;

    invoke-virtual {v11, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->jsonString(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;

    invoke-virtual {v11, v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->packageName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;

    invoke-virtual {v11, v7}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->packageSignature(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;

    invoke-virtual {v11, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->adminUid(I)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;

    invoke-virtual {v11, v8}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->flags(I)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;

    invoke-virtual {v11, v12}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->userId(I)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;

    invoke-virtual {v11, v12}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->flowTypeForProfile(I)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;

    invoke-virtual {v11, v12}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->intervalValueForProfile(I)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;

    invoke-virtual {v11}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->build()Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    move-result-object v12

    iget-object v14, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->profileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v14, v5, v12}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v14, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->adminToProfileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_3

    sget-boolean v14, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->DBG:Z

    if-eqz v14, :cond_2

    const-string v14, "NetworkAnalytics:ConfigStore"

    const-string v15, "addProfileToDatabase: adminToProfileMap.get(adminUid) = null"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v15, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->adminToProfileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v2, v14}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    sget-boolean v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->DBG:Z

    if-eqz v2, :cond_4

    const-string v2, "NetworkAnalytics:ConfigStore"

    const-string v14, "addProfileToDatabase: adminToProfileMap.get(adminUid) is present"

    invoke-static {v2, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v2, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->adminToProfileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_5
    move/from16 v13, p4

    :goto_1
    sget-boolean v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->DBG:Z

    if-eqz v2, :cond_6

    const-string v2, "NetworkAnalytics:ConfigStore"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "addProfileToDatabase: returnValue = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return v4
.end method

.method public doesAdminOwnProfile(ILjava/lang/String;)I
    .locals 5

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->profileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    if-nez v0, :cond_0

    const-string v1, "NetworkAnalytics:ConfigStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "doesAdminOwnProfile: Profile name not found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x3

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getAdminUid()I

    move-result v1

    if-eq v1, p1, :cond_1

    const-string v2, "NetworkAnalytics:ConfigStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "doesAdminOwnProfile: Profile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " does not belong to adminUid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x7

    return v2

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public getActiveStateForName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string v1, "NetworkAnalytics:ConfigStore"

    const-string/jumbo v2, "getActiveStateForName: Null profile Name."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->activationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;

    if-nez v1, :cond_1

    const-string v2, "NetworkAnalytics:ConfigStore"

    const-string/jumbo v3, "getActiveStateForName: Invalid profile Name."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getAllActiveKeysForPackage(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->activationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v2

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->activationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->getProfile()Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->getActivationState()I

    move-result v6

    if-ne v5, v6, :cond_1

    sget-boolean v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "NetworkAnalytics:ConfigStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getAllActiveKeysForPackage: Adding active key for profile"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getAllActiveKeysForProfile(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->activationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v2

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getVendorNameFromTransformedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->activationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;

    if-eqz v4, :cond_1

    const/4 v5, 0x1

    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->getActivationState()I

    move-result v6

    if-ne v5, v6, :cond_1

    sget-boolean v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "NetworkAnalytics:ConfigStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getAllActiveKeysForProfile: Adding active key for profile"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getAllProfilesForPackage(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->profileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-gtz v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v2

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->profileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public getAllProfilesForPackageinUser(Ljava/lang/String;I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->profileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-gtz v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v2

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->profileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getOpUserId()I

    move-result v5

    if-ne v5, p2, :cond_1

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public getAllProfilesForUser(I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->profileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-gtz v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v2

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->profileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getOpUserId()I

    move-result v5

    if-ne v5, p1, :cond_1

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public getClientProfileNames(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->adminToProfileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->adminToProfileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->adminToProfileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    invoke-virtual {v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getClientProfiles(II)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->adminToProfileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->adminToProfileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->adminToProfileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    invoke-virtual {v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getOpUserId()I

    move-result v3

    if-ne v3, p2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getJsonString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getClientProfiles(Ljava/lang/String;I)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/nap/Profile;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->profileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->profileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->profileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz p2, :cond_1

    invoke-virtual {v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getOpUserId()I

    move-result v4

    if-ne p2, v4, :cond_3

    :cond_1
    iget-object v4, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->activationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getOpUserId()I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;

    if-nez v4, :cond_2

    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->getActivationState()I

    move-result v5

    :goto_1
    new-instance v6, Lcom/samsung/android/knox/net/nap/Profile;

    invoke-virtual {v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getJsonString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getOpUserId()I

    move-result v8

    invoke-direct {v6, v5, v7, v8}, Lcom/samsung/android/knox/net/nap/Profile;-><init>(ILjava/lang/String;I)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public getJSonObjectFromString(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "NETWORK_ANALYTICS_PARAMETERS"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "profile_attribute"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    return-object v2
.end method

.method public getProfileObjectFromJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    move-object v1, v0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "NETWORK_ANALYTICS_PARAMETERS"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "profile_attribute"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-object v1
.end method

.method public getProfileforName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string v1, "NetworkAnalytics:ConfigStore"

    const-string/jumbo v2, "getPackageForProfile: Null profile Name."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->profileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    if-nez v1, :cond_1

    const-string v2, "NetworkAnalytics:ConfigStore"

    const-string/jumbo v3, "getPackageForProfile: Invalid profile Name."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getSetActivatedProfiles()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->activationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getUserIdLocationOfPackage(Ljava/lang/String;)I
    .locals 7

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->activationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->activationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->getProfile()Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    invoke-virtual {v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->getActivationState()I

    move-result v6

    if-ne v5, v6, :cond_0

    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getUserId()I

    move-result v1

    return v1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public initializeTables()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->initializeProfileTable()V

    invoke-direct {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->initializeActivationTable()V

    return-void
.end method

.method public isActivatedPackage(Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->activationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->activationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->getProfile()Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->getActivationState()I

    move-result v7

    if-ne v6, v7, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public isAddedPackage(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->profileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->profileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public isProfileActivatedForUser(Ljava/lang/String;I)I
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->activationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->activationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->getActivationState()I

    move-result v0

    :cond_0
    return v0
.end method

.method public removeProfileFromDatabase(ILjava/lang/String;)I
    .locals 6

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->profileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "NetworkAnalytics:ConfigStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeProfileFromDatabase: Profile name not found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x4

    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->mStorageHelper:Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;

    const-string v2, "NAPProfileTable"

    const-string/jumbo v3, "profileName"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    sget-boolean v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "NetworkAnalytics:ConfigStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeProfileFromDatabase: deleteDataByFields? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->updateTablesForProfileRemoval(ILjava/lang/String;)V

    const/4 v0, 0x0

    :cond_2
    return v0
.end method

.method public updateBindUserIdForProfile(Ljava/lang/String;II)I
    .locals 7

    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkAnalytics:ConfigStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateBindUserIdForProfile updating binduserid for profile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, -0x1

    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "client_userid"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "profileName"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "op_userid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->mStorageHelper:Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;

    const-string v4, "NAPProfileTable"

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;->updateFields(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    move-result v3

    move v0, v3

    if-gez v0, :cond_1

    const-string v3, "NetworkAnalytics:ConfigStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateBindUserIdForProfile failed with returnValue:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->profileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    if-eqz v3, :cond_2

    const-string v4, "NetworkAnalytics:ConfigStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateBindUserIdForProfile: Profile userId updated to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, p3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->setUserId(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "NetworkAnalytics:ConfigStore"

    const-string/jumbo v3, "updateBindUserIdForProfile: Exception "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "NetworkAnalytics:ConfigStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateBindUserIdForProfile returnValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v0
.end method

.method public updateTablesForProfileRemoval(ILjava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->adminToProfileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    invoke-virtual {v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "NetworkAnalytics:ConfigStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateTablesForProfileRemoval: profile found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->adminToProfileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->profileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->activationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getVendorNameFromTransformedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-boolean v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->DBG:Z

    if-eqz v4, :cond_3

    const-string v4, "NetworkAnalytics:ConfigStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateTablesForProfileRemoval: removing from activation map "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v4, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->activationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    goto :goto_2

    :cond_5
    return-void
.end method

.method public validateJsonContent(Lorg/json/JSONObject;)I
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string v1, "NetworkAnalytics:ConfigStore"

    const-string/jumbo v2, "validateJsonContent: Invalid parameters"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x4

    return v1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eqz p1, :cond_4

    const-string/jumbo v5, "profile_name"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v5, "NetworkAnalytics:ConfigStore"

    const-string/jumbo v6, "validateJsonContent: Invalid profile name."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x5

    return v5

    :cond_1
    iget-object v5, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->profileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    const-string v5, "NetworkAnalytics:ConfigStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "validateJsonContent: Profile name already exists "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x6

    return v5

    :cond_2
    const-string/jumbo v5, "package_name"

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "package_signature"

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "flags"

    const/4 v6, -0x1

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    if-gez v4, :cond_4

    :cond_3
    const-string v5, "NetworkAnalytics:ConfigStore"

    const-string/jumbo v6, "validateJsonContent: Invalid flags or packageName or signature."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x5

    :cond_4
    return v0
.end method

.method public validatePkgSignForAllProfiles(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->profileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->profileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getPackageSignature()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "NetworkAnalytics:ConfigStore"

    const-string/jumbo v4, "validatePkgSignForAllProfiles: Signatures Dont match!!! "

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "NetworkAnalytics:ConfigStore"

    const-string/jumbo v4, "validatePkgSignForAllProfiles: Signatures in profile"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "NetworkAnalytics:ConfigStore"

    invoke-virtual {v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getPackageSignature()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "NetworkAnalytics:ConfigStore"

    const-string/jumbo v4, "validatePkgSignForAllProfiles: Signatures in parameter "

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "NetworkAnalytics:ConfigStore"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    return v1

    :cond_1
    goto :goto_0

    :cond_2
    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "NetworkAnalytics:ConfigStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "validatePkgSignForAllProfiles: Valid package signature for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method public validatePkgSignForSingleProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->profileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->profileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getPackageSignature()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "NetworkAnalytics:ConfigStore"

    const-string/jumbo v4, "validatePkgSignForAllProfiles: Signatures Dont match!!! "

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "NetworkAnalytics:ConfigStore"

    const-string/jumbo v4, "validatePkgSignForAllProfiles: Signatures in profile"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "NetworkAnalytics:ConfigStore"

    invoke-virtual {v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getPackageSignature()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "NetworkAnalytics:ConfigStore"

    const-string/jumbo v4, "validatePkgSignForAllProfiles: Signatures in parameter "

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "NetworkAnalytics:ConfigStore"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    return v1

    :cond_1
    goto :goto_0

    :cond_2
    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "NetworkAnalytics:ConfigStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "validatePkgSignForAllProfiles: Valid package signature for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v1, 0x1

    return v1
.end method
