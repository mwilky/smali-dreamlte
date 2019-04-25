.class public Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
.super Ljava/lang/Object;
.source "UcmAgentWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;
    }
.end annotation


# static fields
.field private static final AGENT_META_DATA:Ljava/lang/String; = "com.samsung.ucm.agent"

.field private static final AGENT_XML_TAG:Ljava/lang/String; = "cred-agent"

.field private static final BOOTAGENT_REFRESH_DONE:Ljava/lang/String; = "com.samsung.android.knox.intent.action.BOOTAGENT_REFRESH_DONE"

.field private static final BOOT_PLUGIN_PACKAGE:Ljava/lang/String; = "com.samsung.ucs.agent.boot"

.field private static final DEBUG:Z

.field private static final ESE_PLUGIN_PACKAGE:Ljava/lang/String; = "com.samsung.ucs.agent.ese"

.field private static final MSG_RESTART_TIMEOUT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "UcmAgentWrapper"

.field private static final UCM_REFRESH_DONE:Ljava/lang/String; = "com.samsung.android.knox.intent.action.UCM_REFRESH_DONE"


# instance fields
.field private RESTART_TIMEOUT_MILLIS:J

.field componentName:Landroid/content/ComponentName;

.field info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

.field private mBound:Z

.field private final mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mLegacyBound:Z

.field private final mLegacyConnection:Landroid/content/ServiceConnection;

.field private mLegacyUcmAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

.field private mService:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

.field private mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "eng"

    const-string/jumbo v1, "ro.build.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/ucm/ucmservice/CredentialManagerService;Landroid/content/ComponentName;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->RESTART_TIMEOUT_MILLIS:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mBound:Z

    iput-boolean v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyBound:Z

    new-instance v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$1;

    invoke-direct {v0, p0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$1;-><init>(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)V

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$2;

    invoke-direct {v0, p0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$2;-><init>(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)V

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$3;

    invoke-direct {v0, p0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$3;-><init>(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)V

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mService:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    iput-object p3, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    .locals 1

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mService:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;
    .locals 1

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;)Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;
    .locals 0

    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mBound:Z

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->scheduleRestart()V

    return-void
.end method

.method static synthetic access$602(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;)Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    .locals 0

    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyUcmAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    return-object p1
.end method

.method static synthetic access$700(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyBound:Z

    return v0
.end method

.method public static getAgentInfo(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;
    .locals 21

    move-object/from16 v1, p0

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const-string v0, "UcmAgentWrapper"

    const-string v3, "Context is null"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    if-eqz v1, :cond_1b

    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_1b

    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_1

    goto/16 :goto_e

    :cond_1
    const/4 v3, 0x0

    new-instance v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    invoke-direct {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;-><init>()V

    move-object v4, v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    move-object v7, v2

    :try_start_0
    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const-string v8, "com.samsung.ucm.agent"

    invoke-virtual {v0, v5, v8}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    move-object v6, v0

    if-nez v6, :cond_3

    const-string v0, "UcmAgentWrapper"

    const-string v8, "Can\'t find com.samsung.ucm.agent meta-data"

    invoke-static {v0, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    return-object v2

    :cond_3
    :try_start_1
    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    :goto_0
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v8

    move v9, v8

    const/4 v10, 0x1

    if-eq v8, v10, :cond_4

    const/4 v8, 0x2

    if-eq v9, v8, :cond_4

    goto :goto_0

    :cond_4
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v11, "cred-agent"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    const-string v10, "UcmAgentWrapper"

    const-string v11, "Meta-data does not start with tag cred-agent"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_5
    return-object v2

    :cond_6
    :try_start_2
    const-string v11, "id"

    invoke-interface {v6, v2, v11}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->agentId:Ljava/lang/String;

    iget-object v11, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->agentId:Ljava/lang/String;

    if-eqz v11, :cond_16

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v12, v12, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->agentId:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    const-string/jumbo v11, "summary"

    invoke-interface {v6, v2, v11}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->summary:Ljava/lang/String;

    const-string/jumbo v11, "title"

    invoke-interface {v6, v2, v11}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->title:Ljava/lang/String;

    const-string/jumbo v11, "vendorId"

    invoke-interface {v6, v2, v11}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->vendorId:Ljava/lang/String;

    const-string/jumbo v11, "true"

    const-string v12, "isDetachable"

    invoke-interface {v6, v2, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    iput-boolean v11, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isDetachable:Z

    const-string/jumbo v11, "true"

    const-string/jumbo v12, "reqUserVerification"

    invoke-interface {v6, v2, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    iput-boolean v11, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->reqUserVerification:Z

    const-string/jumbo v11, "true"

    const-string v12, "isHardwareBacked"

    invoke-interface {v6, v2, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    iput-boolean v11, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isHardwareBacked:Z

    const-string/jumbo v11, "true"

    const-string v12, "isReadOnly"

    invoke-interface {v6, v2, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    iput-boolean v11, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isReadOnly:Z

    sget-boolean v11, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->DEBUG:Z

    if-eqz v11, :cond_7

    const-string v11, "UcmAgentWrapper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "DETAILED agentInfo information : isDetachable = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "isDetachable"

    invoke-interface {v6, v2, v13}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " requireUserVerification = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v13, "reqUserVerification"

    invoke-interface {v6, v2, v13}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " isHardwareBacked = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "isHardwareBacked"

    invoke-interface {v6, v2, v13}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " isReadOnly = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "isReadOnly"

    invoke-interface {v6, v2, v13}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " packageName = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v13, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const-string v11, "configuratorList"

    invoke-interface {v6, v2, v11}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->configuratorList:Ljava/lang/String;

    const-string v11, "isManageable"

    invoke-interface {v6, v2, v11}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    if-eqz v11, :cond_8

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_8

    const-string v13, "false"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    iput-boolean v12, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isManageable:Z

    goto :goto_1

    :cond_8
    iput-boolean v10, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isManageable:Z

    :goto_1
    const-string/jumbo v13, "true"

    const-string v14, "enforceManagement"

    invoke-interface {v6, v2, v14}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    iput-boolean v13, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->enforceManagement:Z

    iget-object v13, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v13, v13, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v13, :cond_9

    iget-object v13, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v13, v13, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v13, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->serviceUid:I

    :cond_9
    iget-object v13, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v13, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iput-object v13, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v13, "pinMinimum"

    invoke-interface {v6, v2, v13}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_a

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    iput v14, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pinMinLength:I

    goto :goto_2

    :cond_a
    const-string v14, "UcmAgentWrapper"

    const-string/jumbo v10, "pinMinLength in xml is null"

    invoke-static {v14, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x4

    iput v10, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pinMinLength:I

    :goto_2
    const-string/jumbo v10, "pinMaximum"

    invoke-interface {v6, v2, v10}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_b

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    iput v14, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pinMaxLength:I

    goto :goto_3

    :cond_b
    const-string v14, "UcmAgentWrapper"

    const-string/jumbo v12, "pinMaxLength in xml is null"

    invoke-static {v14, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x6

    iput v12, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pinMaxLength:I

    :goto_3
    const-string/jumbo v12, "pukMinimum"

    invoke-interface {v6, v2, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_c

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    iput v14, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pukMinLength:I

    goto :goto_4

    :cond_c
    const-string v14, "UcmAgentWrapper"

    const-string/jumbo v2, "pukMinLength in xml is null"

    invoke-static {v14, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x8

    iput v2, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pukMinLength:I

    :goto_4
    const-string/jumbo v2, "pukMaximum"

    const/4 v14, 0x0

    invoke-interface {v6, v14, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    iput v14, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pukMaxLength:I

    move-object v15, v0

    goto :goto_5

    :cond_d
    const-string v14, "UcmAgentWrapper"

    move-object v15, v0

    const-string/jumbo v0, "pukMaxLength in xml is null"

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x14

    iput v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pukMaxLength:I

    :goto_5
    const-string/jumbo v0, "pinRetrycount"

    const/4 v14, 0x0

    invoke-interface {v6, v14, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    iput v14, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->authMaxCnt:I

    move-object/from16 v16, v0

    goto :goto_6

    :cond_e
    const-string v14, "UcmAgentWrapper"

    move-object/from16 v16, v0

    const-string v0, "authMaxCnt in xml is null"

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    iput v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->authMaxCnt:I

    :goto_6
    const-string v0, "checkMode"

    const/4 v14, 0x0

    invoke-interface {v6, v14, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    iput v14, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->authMode:I

    move-object/from16 v17, v0

    goto :goto_7

    :cond_f
    const-string v14, "UcmAgentWrapper"

    move-object/from16 v17, v0

    const-string v0, "authMode in xml is null"

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->authMode:I

    :goto_7
    const-string/jumbo v0, "true"

    const-string v14, "isGeneratePasswordSupport"

    move-object/from16 v18, v2

    const/4 v2, 0x0

    invoke-interface {v6, v2, v14}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isGeneratePasswordAvailable:Z

    const-string/jumbo v0, "true"

    const-string v2, "isODESupport"

    const/4 v14, 0x0

    invoke-interface {v6, v14, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isODESupport:Z

    const-string/jumbo v0, "settingsActivity"

    const/4 v2, 0x0

    invoke-interface {v6, v2, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    if-eqz v3, :cond_10

    const/16 v0, 0x2f

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    :cond_10
    if-nez v3, :cond_11

    const/4 v2, 0x0

    goto :goto_8

    :cond_11
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    :goto_8
    iput-object v2, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->settingsComponentName:Landroid/content/ComponentName;

    const-string/jumbo v0, "storageType"

    const/4 v2, 0x0

    invoke-interface {v6, v2, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->storageType:Ljava/lang/String;

    const-string v0, "enabledSCP"

    invoke-interface {v6, v2, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->enabledSCP:Ljava/lang/String;

    const-string v0, "enabledWrap"

    invoke-interface {v6, v2, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->enabledWrap:I

    goto :goto_9

    :cond_12
    const-string v2, "UcmAgentWrapper"

    const-string v14, "enabledWrap in xml is null"

    invoke-static {v2, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    iput v2, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->enabledWrap:I

    :goto_9
    invoke-virtual {v4}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v14, "UcmAgentWrapper"

    invoke-static {v14, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v14, "AID"

    move-object/from16 v19, v2

    const/4 v2, 0x0

    invoke-interface {v6, v2, v14}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v2, v14

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    move-object/from16 v20, v0

    const/4 v0, 0x1

    if-eq v0, v14, :cond_14

    invoke-static {v2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->AID:[B

    const/4 v14, 0x0

    goto :goto_a

    :cond_13
    move-object/from16 v20, v0

    :cond_14
    const-string v0, "UcmAgentWrapper"

    const-string v14, "AID in xml is null"

    invoke-static {v0, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    iput-object v14, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->AID:[B

    :goto_a
    const-string v0, "isPUKSupported"

    invoke-interface {v6, v14, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_15

    const-string v14, "false"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_15

    const/4 v14, 0x0

    iput-boolean v14, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isPUKSupported:Z

    goto :goto_b

    :cond_15
    const/4 v14, 0x1

    iput-boolean v14, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isPUKSupported:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_b
    if-eqz v6, :cond_19

    :goto_c
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_d

    :cond_16
    move-object v15, v0

    :try_start_3
    const-string v0, "UcmAgentWrapper"

    const-string v2, "Agent Id can\'t be null.."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    if-eqz v6, :cond_17

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_17
    const/4 v2, 0x0

    return-object v2

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_18

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_18
    throw v0

    :catch_0
    move-exception v0

    move-object v7, v0

    if-eqz v6, :cond_19

    goto :goto_c

    :catch_1
    move-exception v0

    move-object v7, v0

    if-eqz v6, :cond_19

    goto :goto_c

    :catch_2
    move-exception v0

    move-object v7, v0

    if-eqz v6, :cond_19

    goto :goto_c

    :cond_19
    :goto_d
    if-eqz v7, :cond_1a

    const-string v0, "UcmAgentWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error parsing : "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    return-object v2

    :cond_1a
    const-string v0, "UcmAgentWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "agentInfo: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_1b
    :goto_e
    const-string v0, "UcmAgentWrapper"

    const-string/jumbo v2, "resolveInfo null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return-object v2
.end method

.method static getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .locals 3

    if-eqz p0, :cond_1

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 7

    sget-boolean v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "UcmAgentWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hexStringToByteArray : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_2
    return-object v1

    :cond_3
    :goto_1
    const-string v0, "UcmAgentWrapper"

    const-string v1, "Input value is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method private scheduleRestart()V
    .locals 4

    const-string v0, "UcmAgentWrapper"

    const-string/jumbo v1, "scheduleRestart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->RESTART_TIMEOUT_MILLIS:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private unbindLegacy()V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyBound:Z

    if-nez v0, :cond_0

    const-string v0, "UcmAgentWrapper"

    const-string v1, "it is not bound anymore legacy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "UcmAgentWrapper"

    const-string/jumbo v1, "unbind "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "UcmAgentWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unbindLegacy. Exception ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyBound:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyUcmAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    return-void
.end method


# virtual methods
.method public APDUCommand([BLandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->APDUCommand([BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyUcmAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyUcmAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    invoke-interface {v0, p1, p2}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->APDUCommand([BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public changePin(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->changePin(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyUcmAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyUcmAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    invoke-interface {v0, p1, p2}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->changePin(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public configureCredentialStoragePlugin(ILandroid/os/Bundle;I)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->configureCredentialStoragePlugin(ILandroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyUcmAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyUcmAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->configureCredentialStoragePlugin(ILandroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public containsAlias(Ljava/lang/String;II)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->containsAlias(Ljava/lang/String;II)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyUcmAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyUcmAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->containsAlias(Ljava/lang/String;II)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public decrypt(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->decrypt(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyUcmAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyUcmAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->decrypt(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public delete(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->delete(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyUcmAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyUcmAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    invoke-interface {v0, p1, p2}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->delete(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public generateDek()Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    invoke-interface {v0}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->generateDek()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyUcmAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyUcmAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    invoke-interface {v0}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->generateDek()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public generateKeyPair(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->generateKeyPair(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyUcmAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyUcmAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->generateKeyPair(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public generateKeyguardPassword(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->generateKeyguardPassword(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyUcmAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyUcmAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    invoke-interface {v0, p1, p2}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->generateKeyguardPassword(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public generateSecureRandom(I[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->generateSecureRandom(I[BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyUcmAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyUcmAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->generateSecureRandom(I[BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public generateWrappedDek()Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    invoke-interface {v0}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->generateWrappedDek()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyUcmAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyUcmAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    invoke-interface {v0}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->generateWrappedDek()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCertificateChain(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->getCertificateChain(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyUcmAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyUcmAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    invoke-interface {v0, p1, p2}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->getCertificateChain(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCredentialStoragePluginConfiguration(I)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->getCredentialStoragePluginConfiguration(I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyUcmAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyUcmAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    invoke-interface {v0, p1}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->getCredentialStoragePluginConfiguration(I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCredentialStorageProperty(IILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->getCredentialStorageProperty(IILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyUcmAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyUcmAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->getCredentialStorageProperty(IILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDek()Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    invoke-interface {v0}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->getDek()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyUcmAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyUcmAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    invoke-interface {v0}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->getDek()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDetailErrorMessage(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->getDetailErrorMessage(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyUcmAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyUcmAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    invoke-interface {v0, p1}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->getDetailErrorMessage(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "UcmAgentWrapper"

    const-string/jumbo v2, "this plugin does not support getDetailErrorMessage API"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInfo()Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    invoke-interface {v0}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->getInfo()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyUcmAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyUcmAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    invoke-interface {v0}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->getInfo()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStatus()Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    invoke-interface {v0}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->getStatus()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyUcmAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyUcmAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    invoke-interface {v0}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->getStatus()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public importKeyPair(Ljava/lang/String;[B[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->importKeyPair(Ljava/lang/String;[B[BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyUcmAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyUcmAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->importKeyPair(Ljava/lang/String;[B[BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public initialize(Landroid/content/pm/ResolveInfo;Landroid/os/UserHandle;)V
    .locals 6

    invoke-static {p1}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v0

    const-string v1, "UcmAgentWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initialize "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getAgentInfo(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v2, v2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v2, v2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    const-string v3, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-wide/32 v3, 0x1d4c0

    if-eqz v2, :cond_0

    iput-wide v3, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->RESTART_TIMEOUT_MILLIS:J

    :cond_0
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v2, v2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    const-string v5, "com.samsung.ucs.agent.boot"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-wide v3, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->RESTART_TIMEOUT_MILLIS:J

    :cond_1
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->scheduleRestart()V

    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4, p2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mBound:Z

    :cond_2
    iget-boolean v2, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mBound:Z

    if-nez v2, :cond_3

    const-string v2, "UcmAgentWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "not able to bind "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public initialize(Landroid/content/pm/ResolveInfo;Landroid/os/UserHandle;Z)V
    .locals 1

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->initializeLegacy(Landroid/content/pm/ResolveInfo;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->initialize(Landroid/content/pm/ResolveInfo;Landroid/os/UserHandle;)V

    :goto_0
    return-void
.end method

.method public initializeLegacy(Landroid/content/pm/ResolveInfo;Landroid/os/UserHandle;)V
    .locals 6

    invoke-static {p1}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v0

    const-string v1, "UcmAgentWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializeLegacy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getAgentInfo(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v2, v2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v2, v2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    const-string v3, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-wide/32 v3, 0x1d4c0

    if-eqz v2, :cond_0

    iput-wide v3, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->RESTART_TIMEOUT_MILLIS:J

    :cond_0
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v2, v2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    const-string v5, "com.samsung.ucs.agent.boot"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-wide v3, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->RESTART_TIMEOUT_MILLIS:J

    :cond_1
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->scheduleRestart()V

    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4, p2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyBound:Z

    :cond_2
    iget-boolean v2, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyBound:Z

    if-nez v2, :cond_3

    const-string v2, "UcmAgentWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "not able to bind "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public isServiceBound()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyUcmAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public notifyChange(ILandroid/os/Bundle;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->notifyChange(ILandroid/os/Bundle;)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyUcmAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyUcmAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    invoke-interface {v0, p1, p2}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->notifyChange(ILandroid/os/Bundle;)I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public processCommand([BLandroid/os/Bundle;I)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->processCommand([BLandroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyUcmAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyUcmAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->processCommand([BLandroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public resetUid(I)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->resetUid(I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyUcmAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyUcmAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    invoke-interface {v0, p1}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->resetUid(I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public resetUser(I)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->resetUser(I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyUcmAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyUcmAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    invoke-interface {v0, p1}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->resetUser(I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public saw(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->saw(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyUcmAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyUcmAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    invoke-interface {v0, p1}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->saw(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public setCertificateChain(Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->setCertificateChain(Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyUcmAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyUcmAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->setCertificateChain(Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public setCredentialStorageProperty(IILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->setCredentialStorageProperty(IILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyUcmAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyUcmAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->setCredentialStorageProperty(IILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public setState(I)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->setState(I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyUcmAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyUcmAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    invoke-interface {v0, p1}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->setState(I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public sign(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->sign(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyUcmAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyUcmAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->sign(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public unbind()V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mBound:Z

    if-nez v0, :cond_0

    const-string v0, "UcmAgentWrapper"

    const-string v1, "it is not bound anymore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "UcmAgentWrapper"

    const-string/jumbo v1, "unbind "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "UcmAgentWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unbind. Exception ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mBound:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->unbindLegacy()V

    return-void
.end method

.method public unwrapDek([B)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->unwrapDek([B)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyUcmAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyUcmAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    invoke-interface {v0, p1}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->unwrapDek([B)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public verifyPin(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->verifyPin(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyUcmAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyUcmAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->verifyPin(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public verifyPuk(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->verifyPuk(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyUcmAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mLegacyUcmAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    invoke-interface {v0, p1, p2}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->verifyPuk(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
