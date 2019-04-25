.class public Lcom/android/server/ServiceKeeper;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "ServiceKeeper.java"


# static fields
.field private static final AGENT_BRIDGE:I = 0x10

.field private static final AGENT_PROVIDER:I = 0x4

.field private static final AGENT_PROXY:I = 0x8

.field private static final AGENT_SYNCER:I = 0x2

.field private static final AUTHORIZE_POLICY_FILE:Ljava/io/File;

.field private static CONTAINER_CALLER_IDENTIFIER:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field static filteredAPIs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static isActive:Z

.field private static loadFilesLockObject:Ljava/lang/Object;

.field private static mSKLog:Lcom/android/server/SKLogger;

.field static openMethodCache:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static serviceKeeper:Lcom/android/server/ServiceKeeper;

.field static serviceTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/android/server/ServiceObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/ServiceKeeper;->serviceKeeper:Lcom/android/server/ServiceKeeper;

    sput-object v0, Lcom/android/server/ServiceKeeper;->serviceTable:Ljava/util/Hashtable;

    sput-object v0, Lcom/android/server/ServiceKeeper;->filteredAPIs:Ljava/util/ArrayList;

    sput-object v0, Lcom/android/server/ServiceKeeper;->openMethodCache:Ljava/util/HashSet;

    const-string v0, "ServiceKeeper"

    sput-object v0, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    const-string v0, "_container"

    sput-object v0, Lcom/android/server/ServiceKeeper;->CONTAINER_CALLER_IDENTIFIER:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/ServiceKeeper;->isActive:Z

    invoke-static {}, Lcom/android/server/SKLogger;->getLogger()Lcom/android/server/SKLogger;

    move-result-object v0

    sput-object v0, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "/etc/selinux/apm/authorize.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/ServiceKeeper;->AUTHORIZE_POLICY_FILE:Ljava/io/File;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/ServiceKeeper;->loadFilesLockObject:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method

.method public static authorizeLoadProcedure()Z
    .locals 2

    sget-object v0, Lcom/android/server/ServiceKeeper;->loadFilesLockObject:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/ServiceKeeper;->isTableActive()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/server/ServiceKeeper;->filteredAPIs:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/ServiceKeeper;->AUTHORIZE_POLICY_FILE:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ServiceKeeper;->loadFromAuthorizeFile(Ljava/lang/String;)Z

    move-result v1

    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static checkForMethodAuthorization(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 15

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v4, p6

    sget-object v5, Lcom/android/server/ServiceKeeper;->serviceTable:Ljava/util/Hashtable;

    const/4 v6, 0x0

    if-nez v5, :cond_0

    sget-object v5, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    sget-object v7, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "In checkForMethodAuthorization() : ServiceTable is Null: service =  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " method = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " agentType = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " sEInfo = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " packageName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_0
    sget-object v5, Lcom/android/server/ServiceKeeper;->serviceTable:Ljava/util/Hashtable;

    invoke-virtual {v5, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_1

    sget-object v5, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    sget-object v7, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "In checkForMethodAuthorization() : Service is not in service keeper: service =  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " method = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " agentType = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " sEInfo = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " packageName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v6

    :cond_2
    sget-object v5, Lcom/android/server/ServiceKeeper;->serviceTable:Ljava/util/Hashtable;

    invoke-virtual {v5, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/ServiceObject;

    iget-boolean v7, v5, Lcom/android/server/ServiceObject;->isSterileService:Z

    if-eqz v7, :cond_4

    sget-boolean v7, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v7, :cond_3

    sget-object v7, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    sget-object v8, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "In checkForMethodAuthorization() : Service is sterile : service =  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " method = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " agentType = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " sEInfo = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " packageName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return v6

    :cond_4
    iget-object v7, v5, Lcom/android/server/ServiceObject;->serviceMethods:Ljava/util/Hashtable;

    invoke-virtual {v7, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_6

    sget-boolean v8, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v8, :cond_5

    sget-object v8, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    sget-object v9, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "In checkForMethodAuthorization() : Method not in service: service =  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " method = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " agentType = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " sEInfo = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " packageName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return v6

    :cond_6
    invoke-virtual {v7, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/MethodPermissionPackage;

    iget-boolean v9, v8, Lcom/android/server/MethodPermissionPackage;->isSterileMethod:Z

    if-eqz v9, :cond_8

    sget-boolean v9, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v9, :cond_7

    sget-object v9, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    sget-object v10, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "In checkForMethodAuthorization() : Method is sterile: service =  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " method = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " agentType = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " sEInfo = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " packageName = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return v6

    :cond_8
    iget-object v9, v8, Lcom/android/server/MethodPermissionPackage;->seinfos:Ljava/util/HashSet;

    sget-object v10, Lcom/android/server/ServiceKeeper;->CONTAINER_CALLER_IDENTIFIER:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_a

    sget-boolean v9, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v9, :cond_9

    sget-object v9, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    sget-object v11, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "In checkForMethodAuthorization() : Container Caller Method: service =  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " method = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " agentType = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " sEInfo = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " packageName = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    invoke-static/range {p0 .. p1}, Lcom/android/server/ServiceKeeper;->isContainerApp(Landroid/content/Context;I)Z

    move-result v9

    if-eqz v9, :cond_a

    return v10

    :cond_a
    iget-object v9, v8, Lcom/android/server/MethodPermissionPackage;->seinfos:Ljava/util/HashSet;

    invoke-virtual {v9, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    return v10

    :cond_b
    and-int/lit8 v9, v4, 0x2

    if-nez v9, :cond_c

    and-int/lit8 v9, v4, 0x10

    if-nez v9, :cond_c

    and-int/lit8 v9, v4, 0x8

    if-nez v9, :cond_c

    and-int/lit8 v9, v4, 0x4

    if-eqz v9, :cond_f

    :cond_c
    iget-object v9, v8, Lcom/android/server/MethodPermissionPackage;->agentTypes:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    and-int v13, v4, v12

    if-eqz v13, :cond_e

    sget-boolean v6, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v6, :cond_d

    sget-object v6, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    sget-object v9, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "In checkForMethodAuthorization() : Agent Type Match: service =  "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " method = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " agentType = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " sEInfo = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " packageName = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v9, v13}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    return v10

    :cond_e
    goto :goto_0

    :cond_f
    iget-object v9, v8, Lcom/android/server/MethodPermissionPackage;->packages:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_12

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/PackageObject;

    iget-object v12, v11, Lcom/android/server/PackageObject;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    iget-object v12, v11, Lcom/android/server/PackageObject;->seinfo:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    sget-boolean v6, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v6, :cond_10

    sget-object v6, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    sget-object v12, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "In checkForMethodAuthorization() : Package Name Match: service =  "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " method = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " agentType = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " sEInfo = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " packageName = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    return v10

    :cond_11
    goto :goto_1

    :cond_12
    return v6
.end method

.method private static checkForServiceAuthorization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 7

    sget-object v0, Lcom/android/server/ServiceKeeper;->serviceTable:Ljava/util/Hashtable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/android/server/ServiceKeeper;->serviceTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    sget-object v0, Lcom/android/server/ServiceKeeper;->serviceTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ServiceObject;

    iget-boolean v2, v0, Lcom/android/server/ServiceObject;->isSterileService:Z

    if-eqz v2, :cond_2

    return v1

    :cond_2
    iget-object v2, v0, Lcom/android/server/ServiceObject;->servicePermissions:Lcom/android/server/PermissionPackage;

    iget-object v2, v2, Lcom/android/server/PermissionPackage;->seinfos:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    return v3

    :cond_3
    and-int/lit8 v2, p3, 0x2

    if-nez v2, :cond_4

    and-int/lit8 v2, p3, 0x10

    if-nez v2, :cond_4

    and-int/lit8 v2, p3, 0x8

    if-nez v2, :cond_4

    and-int/lit8 v2, p3, 0x4

    if-eqz v2, :cond_6

    :cond_4
    iget-object v2, v0, Lcom/android/server/ServiceObject;->servicePermissions:Lcom/android/server/PermissionPackage;

    iget-object v2, v2, Lcom/android/server/PermissionPackage;->agentTypes:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    and-int v6, p3, v5

    if-eqz v6, :cond_5

    return v3

    :cond_5
    goto :goto_0

    :cond_6
    iget-object v2, v0, Lcom/android/server/ServiceObject;->servicePermissions:Lcom/android/server/PermissionPackage;

    iget-object v2, v2, Lcom/android/server/PermissionPackage;->packages:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/PackageObject;

    iget-object v5, v4, Lcom/android/server/PackageObject;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, v4, Lcom/android/server/PackageObject;->seinfo:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    return v3

    :cond_7
    goto :goto_1

    :cond_8
    return v1
.end method

.method private static createAuthorizationTables(Lorg/w3c/dom/Element;)Z
    .locals 13

    const-string/jumbo v0, "service"

    invoke-interface {p0, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-static {}, Lcom/android/server/ServiceKeeper;->getServiceTable()Ljava/util/Hashtable;

    move-result-object v1

    sput-object v1, Lcom/android/server/ServiceKeeper;->serviceTable:Ljava/util/Hashtable;

    invoke-static {}, Lcom/android/server/ServiceKeeper;->getOpenMethodCache()Ljava/util/HashSet;

    move-result-object v1

    sput-object v1, Lcom/android/server/ServiceKeeper;->openMethodCache:Ljava/util/HashSet;

    const/4 v1, 0x0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v3, 0x1

    if-lez v2, :cond_c

    const/4 v2, 0x0

    move-object v4, v1

    move v1, v2

    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v1, v5, :cond_b

    const/4 v5, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    move-object v5, v6

    check-cast v5, Lorg/w3c/dom/Element;

    new-instance v6, Lcom/android/server/ServiceObject;

    invoke-direct {v6}, Lcom/android/server/ServiceObject;-><init>()V

    invoke-interface {v5}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v7

    const-string/jumbo v8, "name"

    invoke-interface {v7, v8}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    const-string v8, "FilteredAPIs"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string/jumbo v8, "method"

    invoke-interface {v5, v8}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-lez v8, :cond_a

    move v8, v2

    :goto_1
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v8, v9, :cond_a

    invoke-interface {v4, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v9

    if-ne v9, v3, :cond_0

    invoke-interface {v4, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9, v5}, Lorg/w3c/dom/Node;->isSameNode(Lorg/w3c/dom/Node;)Z

    move-result v9

    if-eqz v9, :cond_0

    sget-object v9, Lcom/android/server/ServiceKeeper;->filteredAPIs:Ljava/util/ArrayList;

    invoke-interface {v4, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v10

    const-string/jumbo v11, "name"

    invoke-interface {v10, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    const-string/jumbo v8, "seinfo"

    invoke-interface {v5, v8}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-lez v8, :cond_3

    iput-boolean v2, v6, Lcom/android/server/ServiceObject;->isSterileService:Z

    move v8, v2

    :goto_2
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v8, v9, :cond_3

    invoke-interface {v4, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v9

    if-ne v9, v3, :cond_2

    invoke-interface {v4, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9, v5}, Lorg/w3c/dom/Node;->isSameNode(Lorg/w3c/dom/Node;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, v6, Lcom/android/server/ServiceObject;->servicePermissions:Lcom/android/server/PermissionPackage;

    iget-object v9, v9, Lcom/android/server/PermissionPackage;->seinfos:Ljava/util/HashSet;

    invoke-interface {v4, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v10

    const-string/jumbo v11, "value"

    invoke-interface {v10, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    const-string/jumbo v8, "package"

    invoke-interface {v5, v8}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-lez v8, :cond_5

    iput-boolean v2, v6, Lcom/android/server/ServiceObject;->isSterileService:Z

    move v8, v2

    :goto_3
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v8, v9, :cond_5

    invoke-interface {v4, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v9

    if-ne v9, v3, :cond_4

    invoke-interface {v4, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9, v5}, Lorg/w3c/dom/Node;->isSameNode(Lorg/w3c/dom/Node;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v4, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v9

    const-string/jumbo v10, "name"

    invoke-interface {v9, v10}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v10

    const-string/jumbo v11, "seinfo"

    invoke-interface {v10, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/android/server/PackageObject;

    invoke-direct {v11, v9, v10}, Lcom/android/server/PackageObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v12, v6, Lcom/android/server/ServiceObject;->servicePermissions:Lcom/android/server/PermissionPackage;

    iget-object v12, v12, Lcom/android/server/PermissionPackage;->packages:Ljava/util/HashSet;

    invoke-virtual {v12, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_5
    const-string v8, "agentType"

    invoke-interface {v5, v8}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-lez v8, :cond_7

    iput-boolean v2, v6, Lcom/android/server/ServiceObject;->isSterileService:Z

    move v8, v2

    :goto_4
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v8, v9, :cond_7

    invoke-interface {v4, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v9

    if-ne v9, v3, :cond_6

    invoke-interface {v4, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9, v5}, Lorg/w3c/dom/Node;->isSameNode(Lorg/w3c/dom/Node;)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, v6, Lcom/android/server/ServiceObject;->servicePermissions:Lcom/android/server/PermissionPackage;

    iget-object v9, v9, Lcom/android/server/PermissionPackage;->agentTypes:Ljava/util/HashSet;

    invoke-interface {v4, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v10

    const-string/jumbo v11, "value"

    invoke-interface {v10, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_7
    const-string/jumbo v8, "method"

    invoke-interface {v5, v8}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-lez v8, :cond_8

    iput-boolean v2, v6, Lcom/android/server/ServiceObject;->isSterileService:Z

    invoke-static {v4, v6, v7}, Lcom/android/server/ServiceKeeper;->processMethodsUnderService(Lorg/w3c/dom/NodeList;Lcom/android/server/ServiceObject;Ljava/lang/String;)Z

    :cond_8
    sget-object v8, Lcom/android/server/ServiceKeeper;->serviceTable:Ljava/util/Hashtable;

    invoke-virtual {v8, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_9

    return v2

    :cond_9
    sget-object v8, Lcom/android/server/ServiceKeeper;->serviceTable:Ljava/util/Hashtable;

    invoke-virtual {v8, v7, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_b
    move-object v1, v4

    :cond_c
    return v3
.end method

.method private static getAppinfo(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    .locals 8

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    nop

    :try_start_0
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-interface {v3, p1, v4, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    move-object v0, v5

    if-nez v0, :cond_1

    invoke-static {p0, p2, p3}, Lcom/android/server/ServiceKeeper;->getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v5

    move-object p1, v5

    invoke-interface {v3, p1, v4, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    move-object v0, v4

    if-nez v0, :cond_1

    sget-boolean v4, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    sget-object v5, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "In getappinfo 2, appinfo is null.  pid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " uid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " userId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " pkgName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " appinfo = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v3, p3, p1}, Landroid/content/pm/IPackageManager;->getSEInfoForAASA(ILjava/lang/String;)[B

    move-result-object v4

    move-object v1, v4

    :cond_2
    if-eqz v1, :cond_3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v4, v0, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    sget-boolean v4, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v4, :cond_3

    sget-object v4, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    sget-object v5, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "seinfo of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is changed by AASA"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    sget-object v4, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    const-string v5, "Exception in getAppInfo"

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v3, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    sget-object v4, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception Details:pid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " pkgName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " appinfo = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public static declared-synchronized getOpenMethodCache()Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/android/server/ServiceKeeper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/ServiceKeeper;->openMethodCache:Ljava/util/HashSet;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/android/server/ServiceKeeper;->openMethodCache:Ljava/util/HashSet;

    :cond_0
    sget-object v1, Lcom/android/server/ServiceKeeper;->openMethodCache:Ljava/util/HashSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getPackageName(Landroid/content/Context;II)Ljava/lang/String;
    .locals 5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne p1, v0, :cond_0

    const-string v0, "android"

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    invoke-virtual {v1, p1}, Landroid/app/ActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    sget-object v3, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    const-string v4, "Exception in getPackageName"

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method public static declared-synchronized getServiceKeeper()Lcom/android/server/ServiceKeeper;
    .locals 2

    const-class v0, Lcom/android/server/ServiceKeeper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/ServiceKeeper;->serviceKeeper:Lcom/android/server/ServiceKeeper;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/ServiceKeeper;

    invoke-direct {v1}, Lcom/android/server/ServiceKeeper;-><init>()V

    sput-object v1, Lcom/android/server/ServiceKeeper;->serviceKeeper:Lcom/android/server/ServiceKeeper;

    :cond_0
    sget-object v1, Lcom/android/server/ServiceKeeper;->serviceKeeper:Lcom/android/server/ServiceKeeper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getServiceTable()Ljava/util/Hashtable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/android/server/ServiceObject;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/android/server/ServiceKeeper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/ServiceKeeper;->serviceTable:Ljava/util/Hashtable;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    sput-object v1, Lcom/android/server/ServiceKeeper;->serviceTable:Ljava/util/Hashtable;

    :cond_0
    sget-object v1, Lcom/android/server/ServiceKeeper;->serviceTable:Ljava/util/Hashtable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static getagenttype(Landroid/content/pm/ApplicationInfo;II)I
    .locals 2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    if-nez p0, :cond_1

    return v1

    :cond_1
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->agentType:I

    return v0
.end method

.method public static isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I
    .locals 21

    move/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    const/4 v14, -0x1

    if-eqz v13, :cond_e

    if-nez v12, :cond_0

    goto/16 :goto_a

    :cond_0
    const/4 v8, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne v10, v0, :cond_1

    return v8

    :cond_1
    sget-object v0, Lcom/android/server/ServiceKeeper;->openMethodCache:Ljava/util/HashSet;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/ServiceKeeper;->openMethodCache:Ljava/util/HashSet;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    return v8

    :cond_2
    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    sget-object v2, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in getting from openCache"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    :try_start_1
    invoke-static {}, Lcom/android/server/SEAMService;->isBootComplete()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v0, :cond_3

    return v8

    :cond_3
    goto :goto_1

    :catch_1
    move-exception v0

    move-object v1, v0

    sget-object v1, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    sget-object v2, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in processing bootComplete check"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    :try_start_2
    sget-boolean v0, Lcom/android/server/ServiceKeeper;->isActive:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v0, :cond_4

    return v8

    :cond_4
    goto :goto_2

    :catch_2
    move-exception v0

    move-object v1, v0

    sget-object v1, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    sget-object v2, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in isTableActive check"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v15, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    invoke-static/range {p0 .. p2}, Lcom/android/server/ServiceKeeper;->getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_5

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    sget-object v2, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    sget-object v4, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "In isAuthorized() : Package Name returned null : Returning -1 : : Exiting : service =  "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " method = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " uid = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "pid = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v14

    :cond_5
    move-object/from16 v5, p0

    invoke-static {v5, v9, v10, v11}, Lcom/android/server/ServiceKeeper;->getAppinfo(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    if-nez v4, :cond_7

    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    sget-object v2, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    const-string v8, "In isAuthorized() appInfo is null "

    invoke-virtual {v0, v2, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v14

    :cond_7
    if-eqz v4, :cond_8

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    :goto_3
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v2, :cond_9

    sget-object v2, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    sget-object v14, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v3

    const-string v3, "In isAuthorized() pkgName = "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", seInfo = "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", orgSeinfo[0] = "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v18, v0

    const/4 v3, 0x0

    aget-object v0, v1, v3

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v14, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    move-object/from16 v18, v0

    move/from16 v17, v3

    move v3, v8

    :goto_4
    aget-object v0, v1, v3

    move-object v14, v0

    goto :goto_5

    :cond_a
    move-object/from16 v18, v0

    move/from16 v17, v3

    move-object/from16 v14, v18

    :goto_5
    invoke-static {v4, v10, v11}, Lcom/android/server/ServiceKeeper;->getagenttype(Landroid/content/pm/ApplicationInfo;II)I

    move-result v8

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :try_start_3
    invoke-static {v12, v14, v9, v8}, Lcom/android/server/ServiceKeeper;->checkForServiceAuthorization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    if-eqz v0, :cond_b

    const/4 v1, 0x0

    return v1

    :cond_b
    move-object v1, v5

    move v2, v11

    move-object v3, v12

    move-object/from16 v17, v4

    move-object v4, v14

    move-object v5, v9

    move-wide/from16 v18, v6

    move-object v6, v13

    move v7, v8

    :try_start_4
    invoke-static/range {v1 .. v7}, Lcom/android/server/ServiceKeeper;->checkForMethodAuthorization(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    if-eqz v0, :cond_c

    const/4 v1, 0x0

    return v1

    :cond_c
    goto :goto_7

    :catch_3
    move-exception v0

    goto :goto_6

    :catch_4
    move-exception v0

    move-object/from16 v17, v4

    move-wide/from16 v18, v6

    :goto_6
    sget-object v1, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    sget-object v2, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    const-string v3, "Exception in is Authorized"

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_7
    :try_start_5
    sget-object v1, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_6

    const/4 v2, -0x1

    move-object v3, v14

    move-object v4, v9

    move v5, v8

    move v6, v11

    move v7, v10

    move/from16 v16, v8

    move-object v8, v12

    move-object/from16 v20, v14

    move-object v14, v9

    move-object v9, v13

    :try_start_6
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/SKLogger;->log(ILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_9

    :catch_5
    move-exception v0

    goto :goto_8

    :catch_6
    move-exception v0

    move/from16 v16, v8

    move-object/from16 v20, v14

    move-object v14, v9

    :goto_8
    sget-object v1, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    sget-object v2, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    const-string v3, "Could not log SKPolicy activity due to NULL pointer."

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/android/server/SKLogger;->getLogger()Lcom/android/server/SKLogger;

    move-result-object v1

    sput-object v1, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    :goto_9
    invoke-static/range {p4 .. p4}, Lcom/android/server/ServiceKeeper;->isFilterAPI(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    sget-object v1, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In isAuthorized() : No match found : Returning -1 : : Exiting : service =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " method = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "pid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "pkgName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    const/4 v1, -0x1

    return v1

    :cond_e
    :goto_a
    move v1, v14

    sget-object v0, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    sget-object v2, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    const-string v3, "In isAuthorized() : service is null or method is null"

    invoke-virtual {v0, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static isContainerApp(Landroid/content/Context;I)Z
    .locals 5

    :try_start_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const-string/jumbo v1, "persona"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    sget-object v2, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in isContainerApp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isFilterAPI(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    sget-object v2, Lcom/android/server/ServiceKeeper;->filteredAPIs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    sget-object v2, Lcom/android/server/ServiceKeeper;->filteredAPIs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    goto :goto_1

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    sget-object v3, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "isFilterAPI is error."

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return v0
.end method

.method public static isTableActive()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/ServiceKeeper;->isActive:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private static loadFromAuthorizeFile(Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Element;->normalize()V

    const-string/jumbo v5, "policy"

    invoke-interface {v4, v5}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    move-object v6, v7

    invoke-static {v6}, Lcom/android/server/ServiceKeeper;->createAuthorizationTables(Lorg/w3c/dom/Element;)Z

    move-result v7
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v7, :cond_1

    return v0

    :cond_1
    nop

    nop

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/ServiceKeeper;->isActive:Z

    return v0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    sget-object v4, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    const-string v5, "Exception"

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0

    :catch_1
    move-exception v2

    sget-object v3, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    sget-object v4, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    const-string v5, "IOException"

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0

    :catch_2
    move-exception v2

    sget-object v3, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    sget-object v4, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    const-string v5, "ParserConfigurationException"

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0

    :catch_3
    move-exception v2

    sget-object v3, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    sget-object v4, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    const-string v5, "SAXException"

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method private static processMethodsUnderService(Lorg/w3c/dom/NodeList;Lcom/android/server/ServiceObject;Ljava/lang/String;)Z
    .locals 11

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_6

    const/4 v2, 0x0

    invoke-interface {p0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lorg/w3c/dom/Element;

    new-instance v3, Lcom/android/server/MethodPermissionPackage;

    invoke-direct {v3}, Lcom/android/server/MethodPermissionPackage;-><init>()V

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    const-string/jumbo v5, "name"

    invoke-interface {v4, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "seinfo"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_2

    iput-boolean v0, v3, Lcom/android/server/MethodPermissionPackage;->isSterileMethod:Z

    move v6, v0

    :goto_1
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v6, v7, :cond_2

    iget-object v7, v3, Lcom/android/server/MethodPermissionPackage;->seinfos:Ljava/util/HashSet;

    invoke-interface {v5, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v8

    const-string/jumbo v9, "value"

    invoke-interface {v8, v9}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-interface {v5, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v7

    const-string/jumbo v8, "value"

    invoke-interface {v7, v8}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    const-string v8, "_open"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    sget-boolean v7, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    sget-object v8, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Adding open method entry - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v7, Lcom/android/server/ServiceKeeper;->openMethodCache:Ljava/util/HashSet;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    const-string/jumbo v6, "package"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_3

    iput-boolean v0, v3, Lcom/android/server/MethodPermissionPackage;->isSterileMethod:Z

    move v6, v0

    :goto_2
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v6, v7, :cond_3

    invoke-interface {v5, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v7

    const-string/jumbo v8, "name"

    invoke-interface {v7, v8}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v8

    const-string/jumbo v9, "seinfo"

    invoke-interface {v8, v9}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/android/server/PackageObject;

    invoke-direct {v9, v7, v8}, Lcom/android/server/PackageObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, v3, Lcom/android/server/MethodPermissionPackage;->packages:Ljava/util/HashSet;

    invoke-virtual {v10, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    const-string v6, "agentType"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_4

    iput-boolean v0, v3, Lcom/android/server/MethodPermissionPackage;->isSterileMethod:Z

    move v6, v0

    :goto_3
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v6, v7, :cond_4

    iget-object v7, v3, Lcom/android/server/MethodPermissionPackage;->agentTypes:Ljava/util/HashSet;

    invoke-interface {v5, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v8

    const-string/jumbo v9, "value"

    invoke-interface {v8, v9}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    iget-object v6, p1, Lcom/android/server/ServiceObject;->serviceMethods:Ljava/util/Hashtable;

    invoke-virtual {v6, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5

    return v0

    :cond_5
    iget-object v6, p1, Lcom/android/server/ServiceObject;->serviceMethods:Ljava/util/Hashtable;

    invoke-virtual {v6, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method
