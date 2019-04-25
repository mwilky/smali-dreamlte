.class public Lcom/android/server/ResourceManager;
.super Ljava/lang/Object;
.source "ResourceManager.java"


# static fields
.field private static APM_TYPE:I = 0x0

.field private static SDCARD_TYPE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ResourceManager"

.field private static WHITELIST_MAC_PERM:Ljava/lang/String;

.field private static WHITELIST_SEANDROID_FOLDER:Ljava/lang/String;

.field private static instance:Lcom/android/server/ResourceManager;

.field private static mSKLog:Lcom/android/server/SKLogger;


# instance fields
.field private mPms:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/security/whitelist/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ResourceManager;->WHITELIST_SEANDROID_FOLDER:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/security/whitelist/mac_permissions.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ResourceManager;->WHITELIST_MAC_PERM:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    const/4 v0, 0x1

    sput v0, Lcom/android/server/ResourceManager;->APM_TYPE:I

    invoke-static {}, Lcom/android/server/SKLogger;->getLogger()Lcom/android/server/SKLogger;

    move-result-object v0

    sput-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/ResourceManager;->instance:Lcom/android/server/ResourceManager;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v1, "ResourceManager"

    const-string/jumbo v2, "enter ResourceManager"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private addAppToBlacklistInternal(ILjava/lang/String;[Ljava/lang/String;I)I
    .locals 18

    move/from16 v7, p1

    move-object/from16 v8, p3

    move/from16 v9, p4

    const/4 v1, 0x0

    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "ResourceManager"

    const-string/jumbo v3, "enter addAppToBlacklist"

    invoke-virtual {v0, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v10, -0x1

    :try_start_0
    sget v0, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq v9, v0, :cond_1

    return v10

    :cond_1
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/android/server/ResourceManager;->WHITELIST_SEANDROID_FOLDER:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    sget-boolean v2, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "ResourceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " does not exist. Creating dir"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v2}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v0, v2, v2}, Ljava/io/File;->setWritable(ZZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    :cond_3
    nop

    invoke-static/range {p2 .. p2}, Lcom/android/server/ResourceManager;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_4

    sget-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "ResourceManager"

    const-string v3, " addAppToBlacklist failed, no packageName found"

    invoke-virtual {v0, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v10

    :cond_4
    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "ResourceManager"

    const-string v3, "addAppToBlacklist"

    invoke-virtual {v0, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {v11, v7}, Lcom/android/server/ResourceManager;->getSignatureFromPackage(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v12

    if-nez v8, :cond_7

    sget-boolean v3, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v3, :cond_6

    sget-object v3, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "ResourceManager"

    const-string v5, " Input Certificate is null"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const/16 v3, -0xe

    return v3

    :cond_7
    const/4 v13, 0x0

    if-nez v12, :cond_a

    sget-boolean v3, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v3, :cond_8

    sget-object v3, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "ResourceManager"

    const-string v5, "addAppToBlacklist, signature is null, package not installed yet"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    aget-object v2, v8, v13

    const/4 v1, 0x1

    :cond_9
    move/from16 v16, v0

    move v15, v1

    move-object v14, v2

    goto :goto_0

    :cond_a
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Ljava/lang/String;

    aget-object v3, v8, v13

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v0, 0x1

    sget-boolean v3, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v3, :cond_b

    sget-object v3, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "ResourceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addAppToBlacklist, certMatch: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    if-nez v0, :cond_9

    sget-boolean v3, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v3, :cond_c

    sget-object v3, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "ResourceManager"

    const-string v5, "addAppToBlacklist, input certificate does not match the certificate extracted from package"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    const/16 v3, -0xd

    return v3

    :goto_0
    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_d

    sget-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v1, "ResourceManager"

    const-string v2, "addAppToBlacklist - open whitelist/mac_permissions file"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/ResourceManager;->WHITELIST_MAC_PERM:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    :try_start_1
    invoke-static {v11, v8}, Lcom/android/server/pm/SELinuxMMAC;->getApplicationInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    if-eqz v1, :cond_13

    sget-object v1, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "ResourceManager"

    const-string v3, "addAppToBlacklist, Got Application Info, Seinfo is not null"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "default"

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    if-eqz v1, :cond_e

    :try_start_2
    const-string/jumbo v1, "untrusted"

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object/from16 v2, p0

    move-object v13, v6

    goto/16 :goto_2

    :cond_e
    :goto_1
    move-object v1, v6

    move-object v2, v14

    move-object v3, v11

    move v4, v7

    move-object v5, v0

    move-object v13, v6

    move v6, v9

    :try_start_3
    invoke-static/range {v1 .. v6}, Lcom/android/server/ResourceManager;->addBlacklistEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;I)I

    move-result v1

    if-eqz v1, :cond_f

    sget-object v1, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "ResourceManager"

    const-string v3, "addBlacklistEntryToMac failed"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return v10

    :cond_f
    move-object/from16 v2, p0

    :try_start_4
    invoke-direct {v2, v11, v7, v14, v15}, Lcom/android/server/ResourceManager;->loadContainerSetting(Ljava/lang/String;ILjava/lang/String;Z)I

    move-result v1

    if-ne v1, v10, :cond_10

    invoke-static {v13, v11, v7, v9}, Lcom/android/server/ResourceManager;->removeBlacklistEntryFromMac(Ljava/io/File;Ljava/lang/String;II)Z

    return v10

    :cond_10
    sget-boolean v1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v1, :cond_11

    sget-object v1, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "ResourceManager"

    const-string/jumbo v4, "load container setting is done"

    invoke-virtual {v1, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_11
    nop

    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_12

    sget-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v1, "ResourceManager"

    const-string/jumbo v3, "leave addAppToBlacklist"

    invoke-virtual {v0, v1, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    const/4 v0, 0x0

    return v0

    :catch_1
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_2

    :cond_13
    move-object/from16 v2, p0

    move-object v13, v6

    :try_start_5
    sget-boolean v1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v1, :cond_14

    sget-object v1, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "ResourceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addAppToBlacklist, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " seInfo is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_14
    return v10

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    move-object/from16 v2, p0

    move-object v13, v6

    :goto_2
    sget-boolean v1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v1, :cond_15

    sget-object v1, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "ResourceManager"

    const-string/jumbo v4, "leave addAppToBlacklist: Exception: Returning Policy Failed"

    invoke-virtual {v1, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    return v10

    :catch_4
    move-exception v0

    move-object/from16 v2, p0

    sget-object v3, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "ResourceManager"

    const-string v5, "Issue with whitelistDir directory"

    invoke-virtual {v3, v4, v5, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v10
.end method

.method protected static declared-synchronized addBlacklistEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;I)I
    .locals 36

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    const-class v6, Lcom/android/server/ResourceManager;

    monitor-enter v6

    :try_start_0
    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "ResourceManager"

    const-string v8, "addBlacklistEntryToMac_begin"

    invoke-virtual {v0, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    move-object v7, v0

    iget v0, v4, Landroid/content/pm/ApplicationInfo;->space:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->allowSpace:Ljava/lang/String;

    move-object v9, v0

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->allowContainerSpace:Ljava/lang/String;

    move-object v10, v0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v13, v0

    const/4 v0, 0x0

    move-object v14, v0

    :try_start_1
    invoke-virtual {v13}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    move-object v15, v0

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_5a
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_59
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_58
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_57
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_56
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    :try_start_2
    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "ResourceManager"
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move/from16 v17, v11

    :try_start_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move/from16 v18, v12

    :try_start_4
    const-string/jumbo v12, "macPermFile exists "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v4, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move/from16 v18, v12

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    move-object/from16 v28, v13

    move/from16 v7, p3

    goto/16 :goto_22

    :catch_1
    move-exception v0

    move/from16 v18, v12

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    move-object/from16 v28, v13

    move/from16 v7, p3

    goto/16 :goto_23

    :catch_2
    move-exception v0

    move/from16 v18, v12

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    move-object/from16 v28, v13

    move/from16 v7, p3

    goto/16 :goto_24

    :catch_3
    move-exception v0

    move/from16 v18, v12

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    move-object/from16 v28, v13

    move/from16 v7, p3

    goto/16 :goto_25

    :catch_4
    move-exception v0

    move/from16 v18, v12

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    move-object/from16 v28, v13

    move/from16 v7, p3

    goto/16 :goto_26

    :cond_1
    move/from16 v17, v11

    move/from16 v18, v12

    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/io/File;->setWritable(Z)Z

    :cond_2
    invoke-virtual {v15, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v0
    :try_end_4
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljavax/xml/transform/TransformerException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v12, 0x1

    move-object v14, v0

    goto/16 :goto_7

    :catch_5
    move-exception v0

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    move-object/from16 v28, v13

    move/from16 v12, v18

    :goto_1
    move/from16 v7, p3

    goto/16 :goto_22

    :catch_6
    move-exception v0

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    move-object/from16 v28, v13

    move/from16 v12, v18

    :goto_2
    move/from16 v7, p3

    goto/16 :goto_23

    :catch_7
    move-exception v0

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    move-object/from16 v28, v13

    move/from16 v12, v18

    :goto_3
    move/from16 v7, p3

    goto/16 :goto_24

    :catch_8
    move-exception v0

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    move-object/from16 v28, v13

    move/from16 v12, v18

    :goto_4
    move/from16 v7, p3

    goto/16 :goto_25

    :catch_9
    move-exception v0

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    move-object/from16 v28, v13

    move/from16 v12, v18

    :goto_5
    move/from16 v7, p3

    goto/16 :goto_26

    :catch_a
    move-exception v0

    move/from16 v17, v11

    move/from16 v18, v12

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    move-object/from16 v28, v13

    move/from16 v7, p3

    goto/16 :goto_22

    :catch_b
    move-exception v0

    move/from16 v17, v11

    move/from16 v18, v12

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    move-object/from16 v28, v13

    move/from16 v7, p3

    goto/16 :goto_23

    :catch_c
    move-exception v0

    move/from16 v17, v11

    move/from16 v18, v12

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    move-object/from16 v28, v13

    move/from16 v7, p3

    goto/16 :goto_24

    :catch_d
    move-exception v0

    move/from16 v17, v11

    move/from16 v18, v12

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    move-object/from16 v28, v13

    move/from16 v7, p3

    goto/16 :goto_25

    :catch_e
    move-exception v0

    move/from16 v17, v11

    move/from16 v18, v12

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    move-object/from16 v28, v13

    move/from16 v7, p3

    goto/16 :goto_26

    :cond_3
    move/from16 v17, v11

    move/from16 v18, v12

    :try_start_5
    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z
    :try_end_5
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_55
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_5} :catch_54
    .catch Ljavax/xml/transform/TransformerException; {:try_start_5 .. :try_end_5} :catch_53
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_52
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_51
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v0, :cond_4

    :try_start_6
    sget-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "ResourceManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "addEntryToMac,"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " does not exist, creating file"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v4, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/xml/sax/SAXException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljavax/xml/transform/TransformerException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_4
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->createNewFile()Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_f
    .catch Lorg/xml/sax/SAXException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljavax/xml/transform/TransformerException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_6

    :catch_f
    move-exception v0

    move-object v4, v0

    :try_start_8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_6
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v0
    :try_end_8
    .catch Lorg/xml/sax/SAXException; {:try_start_8 .. :try_end_8} :catch_55
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_8 .. :try_end_8} :catch_54
    .catch Ljavax/xml/transform/TransformerException; {:try_start_8 .. :try_end_8} :catch_53
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_52
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_51
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-nez v0, :cond_5

    const/4 v4, 0x1

    :try_start_9
    invoke-virtual {v1, v4}, Ljava/io/File;->setWritable(Z)Z
    :try_end_9
    .catch Lorg/xml/sax/SAXException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljavax/xml/transform/TransformerException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_5
    :try_start_a
    invoke-virtual {v15}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    move-object v14, v0

    const-string/jumbo v0, "policy"

    invoke-interface {v14, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v14, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_a
    .catch Lorg/xml/sax/SAXException; {:try_start_a .. :try_end_a} :catch_55
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_a .. :try_end_a} :catch_54
    .catch Ljavax/xml/transform/TransformerException; {:try_start_a .. :try_end_a} :catch_53
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_52
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_51
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move/from16 v12, v18

    :goto_7
    :try_start_b
    invoke-interface {v14}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Element;->normalize()V

    const-string/jumbo v0, "policy"

    invoke-interface {v14, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v11, 0x0

    invoke-interface {v0, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v16

    check-cast v16, Lorg/w3c/dom/Element;

    move-object/from16 v4, v16

    const-string/jumbo v11, "signer"

    invoke-interface {v4, v11}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-string/jumbo v23, "service"

    move-object/from16 v24, v23

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    invoke-interface {v14, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v22

    move-object/from16 v26, v22

    move-object/from16 v27, v0

    const-string/jumbo v0, "name"
    :try_end_b
    .catch Lorg/xml/sax/SAXException; {:try_start_b .. :try_end_b} :catch_50
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_b .. :try_end_b} :catch_4f
    .catch Ljavax/xml/transform/TransformerException; {:try_start_b .. :try_end_b} :catch_4e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4d
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4c
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-object/from16 v28, v13

    move-object/from16 v13, v26

    :try_start_c
    invoke-interface {v13, v0, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "seinfo"

    invoke-interface {v13, v0, v7}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Lorg/xml/sax/SAXException; {:try_start_c .. :try_end_c} :catch_4b
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_c .. :try_end_c} :catch_4a
    .catch Ljavax/xml/transform/TransformerException; {:try_start_c .. :try_end_c} :catch_49
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_48
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_47
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v8, :cond_6

    :try_start_d
    const-string/jumbo v0, "space"

    invoke-interface {v13, v0, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :catch_10
    move-exception v0

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    goto/16 :goto_1

    :catch_11
    move-exception v0

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    goto/16 :goto_2

    :catch_12
    move-exception v0

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    goto/16 :goto_3

    :catch_13
    move-exception v0

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    goto/16 :goto_4

    :catch_14
    move-exception v0

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    goto/16 :goto_5

    :cond_6
    :goto_8
    if-eqz v9, :cond_7

    const-string v0, "allowSpace"

    invoke-interface {v13, v0, v9}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    if-eqz v10, :cond_8

    const-string v0, "containerAllowSpace"

    invoke-interface {v13, v0, v10}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Lorg/xml/sax/SAXException; {:try_start_d .. :try_end_d} :catch_14
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_d .. :try_end_d} :catch_13
    .catch Ljavax/xml/transform/TransformerException; {:try_start_d .. :try_end_d} :catch_12
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_11
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_10
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :cond_8
    :try_start_e
    sget v0, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I
    :try_end_e
    .catch Lorg/xml/sax/SAXException; {:try_start_e .. :try_end_e} :catch_4b
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_e .. :try_end_e} :catch_4a
    .catch Ljavax/xml/transform/TransformerException; {:try_start_e .. :try_end_e} :catch_49
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_48
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_47
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-ne v5, v0, :cond_a

    :try_start_f
    const-string/jumbo v0, "sdcarduseridBL"
    :try_end_f
    .catch Lorg/xml/sax/SAXException; {:try_start_f .. :try_end_f} :catch_1e
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_f .. :try_end_f} :catch_1d
    .catch Ljavax/xml/transform/TransformerException; {:try_start_f .. :try_end_f} :catch_1c
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1b
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1a
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    move-object/from16 v29, v10

    :try_start_10
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v13, v0, v10}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_9

    sget-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v10, "ResourceManager"

    move-object/from16 v30, v15

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_10
    .catch Lorg/xml/sax/SAXException; {:try_start_10 .. :try_end_10} :catch_19
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_10 .. :try_end_10} :catch_18
    .catch Ljavax/xml/transform/TransformerException; {:try_start_10 .. :try_end_10} :catch_17
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_16
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_15
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :try_start_11
    const-string v1, "addblacklistentrytomac - package = "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "whitelisted to access sdcard"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Lorg/xml/sax/SAXException; {:try_start_11 .. :try_end_11} :catch_23
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_11 .. :try_end_11} :catch_22
    .catch Ljavax/xml/transform/TransformerException; {:try_start_11 .. :try_end_11} :catch_21
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_20
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1f
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_9

    :cond_9
    move-object/from16 v30, v15

    goto/16 :goto_9

    :catch_15
    move-exception v0

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    goto/16 :goto_1

    :catch_16
    move-exception v0

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    goto/16 :goto_2

    :catch_17
    move-exception v0

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    goto/16 :goto_3

    :catch_18
    move-exception v0

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    goto/16 :goto_4

    :catch_19
    move-exception v0

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    goto/16 :goto_5

    :catch_1a
    move-exception v0

    move-object/from16 v29, v10

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move/from16 v7, p3

    goto/16 :goto_22

    :catch_1b
    move-exception v0

    move-object/from16 v29, v10

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move/from16 v7, p3

    goto/16 :goto_23

    :catch_1c
    move-exception v0

    move-object/from16 v29, v10

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move/from16 v7, p3

    goto/16 :goto_24

    :catch_1d
    move-exception v0

    move-object/from16 v29, v10

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move/from16 v7, p3

    goto/16 :goto_25

    :catch_1e
    move-exception v0

    move-object/from16 v29, v10

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move/from16 v7, p3

    goto/16 :goto_26

    :cond_a
    move-object/from16 v29, v10

    move-object/from16 v30, v15

    :goto_9
    :try_start_12
    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z
    :try_end_12
    .catch Lorg/xml/sax/SAXException; {:try_start_12 .. :try_end_12} :catch_46
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_12 .. :try_end_12} :catch_45
    .catch Ljavax/xml/transform/TransformerException; {:try_start_12 .. :try_end_12} :catch_44
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_43
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_42
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    if-eqz v0, :cond_b

    :try_start_13
    sget-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v1, "ResourceManager"

    const-string v10, "addblacklistentrytomac - done with preparing entry"

    invoke-virtual {v0, v1, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Lorg/xml/sax/SAXException; {:try_start_13 .. :try_end_13} :catch_23
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_13 .. :try_end_13} :catch_22
    .catch Ljavax/xml/transform/TransformerException; {:try_start_13 .. :try_end_13} :catch_21
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_20
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1f
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto :goto_a

    :catch_1f
    move-exception v0

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v15, p0

    goto/16 :goto_1

    :catch_20
    move-exception v0

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v15, p0

    goto/16 :goto_2

    :catch_21
    move-exception v0

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v15, p0

    goto/16 :goto_3

    :catch_22
    move-exception v0

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v15, p0

    goto/16 :goto_4

    :catch_23
    move-exception v0

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v15, p0

    goto/16 :goto_5

    :cond_b
    :goto_a
    :try_start_14
    const-string/jumbo v0, "signer"

    invoke-interface {v14, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    const-string/jumbo v1, "seinfo"

    invoke-interface {v14, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    const-string v10, "allow-all"

    invoke-interface {v14, v10}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v10

    const-string/jumbo v15, "signature"

    invoke-interface {v0, v15, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v15, "value"

    invoke-interface {v1, v15, v7}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catch Lorg/xml/sax/SAXException; {:try_start_14 .. :try_end_14} :catch_46
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_14 .. :try_end_14} :catch_45
    .catch Ljavax/xml/transform/TransformerException; {:try_start_14 .. :try_end_14} :catch_44
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_43
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_42
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    if-eqz v8, :cond_c

    :try_start_15
    const-string/jumbo v15, "space"

    invoke-interface {v1, v15, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    if-eqz v9, :cond_d

    const-string v15, "allowSpace"

    invoke-interface {v1, v15, v9}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catch Lorg/xml/sax/SAXException; {:try_start_15 .. :try_end_15} :catch_23
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_15 .. :try_end_15} :catch_22
    .catch Ljavax/xml/transform/TransformerException; {:try_start_15 .. :try_end_15} :catch_21
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_20
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_1f
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    :cond_d
    const/4 v15, 0x0

    :goto_b
    move-object/from16 v31, v7

    :try_start_16
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v15, v7, :cond_16

    invoke-interface {v11, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;
    :try_end_16
    .catch Lorg/xml/sax/SAXException; {:try_start_16 .. :try_end_16} :catch_41
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_16 .. :try_end_16} :catch_40
    .catch Ljavax/xml/transform/TransformerException; {:try_start_16 .. :try_end_16} :catch_3f
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_3e
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_3d
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    move-object/from16 v32, v8

    :try_start_17
    const-string/jumbo v8, "signature"

    invoke-interface {v7, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-static {v7, v3}, Lcom/android/server/ResourceManager;->checkTrustedEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v8

    if-eqz v8, :cond_13

    sget-boolean v16, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z
    :try_end_17
    .catch Lorg/xml/sax/SAXException; {:try_start_17 .. :try_end_17} :catch_32
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_17 .. :try_end_17} :catch_31
    .catch Ljavax/xml/transform/TransformerException; {:try_start_17 .. :try_end_17} :catch_30
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_2f
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_2e
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    if-eqz v16, :cond_e

    :try_start_18
    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    move-object/from16 v33, v7

    const-string v7, "ResourceManager"
    :try_end_18
    .catch Lorg/xml/sax/SAXException; {:try_start_18 .. :try_end_18} :catch_28
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_18 .. :try_end_18} :catch_27
    .catch Ljavax/xml/transform/TransformerException; {:try_start_18 .. :try_end_18} :catch_26
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_25
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_24
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    move-object/from16 v34, v9

    :try_start_19
    const-string v9, "Exist elem not null. Package Name already exists"

    invoke-virtual {v2, v7, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :catch_24
    move-exception v0

    move-object/from16 v34, v9

    move/from16 v7, p3

    goto/16 :goto_f

    :catch_25
    move-exception v0

    move-object/from16 v34, v9

    move/from16 v7, p3

    goto/16 :goto_10

    :catch_26
    move-exception v0

    move-object/from16 v34, v9

    move/from16 v7, p3

    goto/16 :goto_11

    :catch_27
    move-exception v0

    move-object/from16 v34, v9

    move/from16 v7, p3

    goto/16 :goto_12

    :catch_28
    move-exception v0

    move-object/from16 v34, v9

    move/from16 v7, p3

    goto/16 :goto_13

    :cond_e
    move-object/from16 v33, v7

    move-object/from16 v34, v9

    :goto_c
    sget v2, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-ne v5, v2, :cond_12

    const-string/jumbo v2, "sdcarduseridBL"

    invoke-interface {v8, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/android/server/ResourceManager;->checkUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    sget-boolean v2, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v2, :cond_f

    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "ResourceManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addEntryToMac, Existing "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " entry for "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", return true and continue with next step"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v7, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catch Lorg/xml/sax/SAXException; {:try_start_19 .. :try_end_19} :catch_2d
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_19 .. :try_end_19} :catch_2c
    .catch Ljavax/xml/transform/TransformerException; {:try_start_19 .. :try_end_19} :catch_2b
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_2a
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_29
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    :cond_f
    monitor-exit v6

    const/4 v2, 0x0

    return v2

    :cond_10
    const/4 v2, 0x0

    :try_start_1a
    const-string/jumbo v5, "sdcarduseridBL"

    invoke-interface {v8, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_11

    const-string/jumbo v5, "sdcarduseridBL"

    invoke-interface {v8, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1a
    .catch Lorg/xml/sax/SAXException; {:try_start_1a .. :try_end_1a} :catch_2d
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1a .. :try_end_1a} :catch_2c
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1a .. :try_end_1a} :catch_2b
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_2a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_29
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    move/from16 v7, p3

    :try_start_1b
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ","

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "sdcarduseridBL"

    invoke-interface {v8, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    goto :goto_d

    :cond_11
    move/from16 v7, p3

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    :goto_d
    const-string/jumbo v5, "sdcarduseridBL"

    invoke-interface {v8, v5, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    nop

    move/from16 v17, v5

    goto/16 :goto_14

    :cond_12
    move/from16 v7, p3

    goto :goto_e

    :catch_29
    move-exception v0

    move/from16 v7, p3

    goto/16 :goto_15

    :catch_2a
    move-exception v0

    move/from16 v7, p3

    goto/16 :goto_16

    :catch_2b
    move-exception v0

    move/from16 v7, p3

    goto/16 :goto_17

    :catch_2c
    move-exception v0

    move/from16 v7, p3

    goto/16 :goto_18

    :catch_2d
    move-exception v0

    move/from16 v7, p3

    goto/16 :goto_19

    :cond_13
    move-object/from16 v33, v7

    move-object/from16 v34, v9

    move/from16 v7, p3

    :goto_e
    invoke-interface {v11, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2, v13}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    sget-boolean v2, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v2, :cond_14

    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "ResourceManager"

    const-string v9, "addBlacklistEntryToMac, signature match found. Appending elem"

    invoke-virtual {v2, v5, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    const/4 v2, 0x1

    nop

    move/from16 v17, v2

    goto :goto_14

    :cond_15
    move-object/from16 v33, v7

    move-object/from16 v34, v9

    move/from16 v7, p3

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v7, v31

    move-object/from16 v8, v32

    move-object/from16 v16, v33

    move-object/from16 v2, p1

    move/from16 v5, p5

    goto/16 :goto_b

    :catch_2e
    move-exception v0

    move/from16 v7, p3

    move-object/from16 v34, v9

    :goto_f
    move-object/from16 v15, p0

    goto/16 :goto_22

    :catch_2f
    move-exception v0

    move/from16 v7, p3

    move-object/from16 v34, v9

    :goto_10
    move-object/from16 v15, p0

    goto/16 :goto_23

    :catch_30
    move-exception v0

    move/from16 v7, p3

    move-object/from16 v34, v9

    :goto_11
    move-object/from16 v15, p0

    goto/16 :goto_24

    :catch_31
    move-exception v0

    move/from16 v7, p3

    move-object/from16 v34, v9

    :goto_12
    move-object/from16 v15, p0

    goto/16 :goto_25

    :catch_32
    move-exception v0

    move/from16 v7, p3

    move-object/from16 v34, v9

    :goto_13
    move-object/from16 v15, p0

    goto/16 :goto_26

    :cond_16
    move/from16 v7, p3

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v33, v16

    :goto_14
    if-nez v17, :cond_17

    invoke-interface {v0, v10}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {v0, v13}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {v4, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_1a

    :catch_33
    move-exception v0

    :goto_15
    move-object/from16 v15, p0

    goto/16 :goto_22

    :catch_34
    move-exception v0

    :goto_16
    move-object/from16 v15, p0

    goto/16 :goto_23

    :catch_35
    move-exception v0

    :goto_17
    move-object/from16 v15, p0

    goto/16 :goto_24

    :catch_36
    move-exception v0

    :goto_18
    move-object/from16 v15, p0

    goto/16 :goto_25

    :catch_37
    move-exception v0

    :goto_19
    move-object/from16 v15, p0

    goto/16 :goto_26

    :cond_17
    :goto_1a
    invoke-interface {v14}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Element;->normalize()V

    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v5

    const/4 v8, 0x0

    if-eqz v12, :cond_18

    new-instance v9, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v9, v14}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    move-object v8, v9

    goto :goto_1b

    :cond_18
    new-instance v9, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v9, v4}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    move-object v8, v9

    :goto_1b
    new-instance v9, Ljavax/xml/transform/stream/StreamResult;
    :try_end_1b
    .catch Lorg/xml/sax/SAXException; {:try_start_1b .. :try_end_1b} :catch_37
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1b .. :try_end_1b} :catch_36
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1b .. :try_end_1b} :catch_35
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_34
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_33
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    move-object/from16 v15, p0

    :try_start_1c
    invoke-direct {v9, v15}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    invoke-virtual {v5, v8, v9}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v16

    if-eqz v16, :cond_19

    move-object/from16 v35, v0

    const/4 v0, 0x0

    invoke-virtual {v15, v0}, Ljava/io/File;->setWritable(Z)Z
    :try_end_1c
    .catch Lorg/xml/sax/SAXException; {:try_start_1c .. :try_end_1c} :catch_3c
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1c .. :try_end_1c} :catch_3b
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1c .. :try_end_1c} :catch_3a
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_39
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_38
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    goto :goto_1c

    :cond_19
    move-object/from16 v35, v0

    :goto_1c
    monitor-exit v6

    const/4 v0, 0x0

    return v0

    :catch_38
    move-exception v0

    goto/16 :goto_22

    :catch_39
    move-exception v0

    goto/16 :goto_23

    :catch_3a
    move-exception v0

    goto/16 :goto_24

    :catch_3b
    move-exception v0

    goto/16 :goto_25

    :catch_3c
    move-exception v0

    goto/16 :goto_26

    :catch_3d
    move-exception v0

    move/from16 v7, p3

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v15, p0

    goto/16 :goto_22

    :catch_3e
    move-exception v0

    move/from16 v7, p3

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v15, p0

    goto/16 :goto_23

    :catch_3f
    move-exception v0

    move/from16 v7, p3

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v15, p0

    goto/16 :goto_24

    :catch_40
    move-exception v0

    move/from16 v7, p3

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v15, p0

    goto/16 :goto_25

    :catch_41
    move-exception v0

    move/from16 v7, p3

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v15, p0

    goto/16 :goto_26

    :catch_42
    move-exception v0

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v15, p0

    move/from16 v7, p3

    goto/16 :goto_22

    :catch_43
    move-exception v0

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v15, p0

    move/from16 v7, p3

    goto/16 :goto_23

    :catch_44
    move-exception v0

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v15, p0

    move/from16 v7, p3

    goto/16 :goto_24

    :catch_45
    move-exception v0

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v15, p0

    move/from16 v7, p3

    goto/16 :goto_25

    :catch_46
    move-exception v0

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v15, p0

    move/from16 v7, p3

    goto/16 :goto_26

    :catch_47
    move-exception v0

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    move/from16 v7, p3

    goto/16 :goto_22

    :catch_48
    move-exception v0

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    move/from16 v7, p3

    goto/16 :goto_23

    :catch_49
    move-exception v0

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    move/from16 v7, p3

    goto/16 :goto_24

    :catch_4a
    move-exception v0

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    move/from16 v7, p3

    goto/16 :goto_25

    :catch_4b
    move-exception v0

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    move/from16 v7, p3

    goto/16 :goto_26

    :catch_4c
    move-exception v0

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    move-object/from16 v28, v13

    move/from16 v7, p3

    goto/16 :goto_1d

    :catch_4d
    move-exception v0

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    move-object/from16 v28, v13

    move/from16 v7, p3

    goto/16 :goto_1e

    :catch_4e
    move-exception v0

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    move-object/from16 v28, v13

    move/from16 v7, p3

    goto/16 :goto_1f

    :catch_4f
    move-exception v0

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    move-object/from16 v28, v13

    move/from16 v7, p3

    goto/16 :goto_20

    :catch_50
    move-exception v0

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    move-object/from16 v28, v13

    move/from16 v7, p3

    goto/16 :goto_21

    :catch_51
    move-exception v0

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    move-object/from16 v28, v13

    move/from16 v7, p3

    move/from16 v12, v18

    :goto_1d
    goto/16 :goto_22

    :catch_52
    move-exception v0

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    move-object/from16 v28, v13

    move/from16 v7, p3

    move/from16 v12, v18

    :goto_1e
    goto/16 :goto_23

    :catch_53
    move-exception v0

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    move-object/from16 v28, v13

    move/from16 v7, p3

    move/from16 v12, v18

    :goto_1f
    goto/16 :goto_24

    :catch_54
    move-exception v0

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    move-object/from16 v28, v13

    move/from16 v7, p3

    move/from16 v12, v18

    :goto_20
    goto/16 :goto_25

    :catch_55
    move-exception v0

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    move-object/from16 v28, v13

    move/from16 v7, p3

    move/from16 v12, v18

    :goto_21
    goto/16 :goto_26

    :catch_56
    move-exception v0

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    move/from16 v17, v11

    move/from16 v18, v12

    move-object/from16 v28, v13

    move/from16 v7, p3

    :goto_22
    :try_start_1d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_28

    :catch_57
    move-exception v0

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    move/from16 v17, v11

    move/from16 v18, v12

    move-object/from16 v28, v13

    move/from16 v7, p3

    :goto_23
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_27

    :catch_58
    move-exception v0

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    move/from16 v17, v11

    move/from16 v18, v12

    move-object/from16 v28, v13

    move/from16 v7, p3

    :goto_24
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto :goto_27

    :catch_59
    move-exception v0

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    move/from16 v17, v11

    move/from16 v18, v12

    move-object/from16 v28, v13

    move/from16 v7, p3

    :goto_25
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_27

    :catch_5a
    move-exception v0

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    move/from16 v17, v11

    move/from16 v18, v12

    move-object/from16 v28, v13

    move/from16 v7, p3

    :goto_26
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    :goto_27
    nop

    :goto_28
    const/4 v0, -0x1

    monitor-exit v6

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method protected static declared-synchronized addWhitelistEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;I)I
    .locals 39

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    const-class v7, Lcom/android/server/ResourceManager;

    monitor-enter v7

    :try_start_0
    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "ResourceManager"

    const-string v9, "addWhitelistEntryToMac_begin"

    invoke-virtual {v0, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    move-object v8, v0

    iget v0, v5, Landroid/content/pm/ApplicationInfo;->space:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->allowSpace:Ljava/lang/String;

    move-object v10, v0

    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->allowContainerSpace:Ljava/lang/String;

    move-object v11, v0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v14, v0

    const/4 v0, 0x0

    move-object v15, v0

    :try_start_1
    invoke-virtual {v14}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    move-object/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_82
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_81
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_80
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7e
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    :try_start_2
    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "ResourceManager"
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move/from16 v18, v12

    :try_start_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move/from16 v19, v13

    :try_start_4
    const-string/jumbo v13, "macPermFile exists "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v5, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move/from16 v19, v13

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move-object/from16 v20, v14

    move/from16 v31, v19

    goto/16 :goto_29

    :catch_1
    move-exception v0

    move/from16 v19, v13

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move-object/from16 v20, v14

    move/from16 v31, v19

    goto/16 :goto_2a

    :catch_2
    move-exception v0

    move/from16 v19, v13

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move-object/from16 v20, v14

    move/from16 v31, v19

    goto/16 :goto_2b

    :catch_3
    move-exception v0

    move/from16 v19, v13

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move-object/from16 v20, v14

    move/from16 v31, v19

    goto/16 :goto_2c

    :catch_4
    move-exception v0

    move/from16 v19, v13

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move-object/from16 v20, v14

    move/from16 v31, v19

    goto/16 :goto_2d

    :cond_1
    move/from16 v18, v12

    move/from16 v19, v13

    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/io/File;->setWritable(Z)Z

    :cond_2
    move-object/from16 v5, v16

    invoke-virtual {v5, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v0
    :try_end_4
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljavax/xml/transform/TransformerException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v13, 0x1

    move-object v15, v0

    move-object/from16 v20, v14

    goto/16 :goto_8

    :catch_5
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move-object/from16 v20, v14

    :goto_1
    move/from16 v31, v19

    goto/16 :goto_29

    :catch_6
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move-object/from16 v20, v14

    :goto_2
    move/from16 v31, v19

    goto/16 :goto_2a

    :catch_7
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move-object/from16 v20, v14

    :goto_3
    move/from16 v31, v19

    goto/16 :goto_2b

    :catch_8
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move-object/from16 v20, v14

    :goto_4
    move/from16 v31, v19

    goto/16 :goto_2c

    :catch_9
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move-object/from16 v20, v14

    :goto_5
    move/from16 v31, v19

    goto/16 :goto_2d

    :catch_a
    move-exception v0

    move/from16 v18, v12

    move/from16 v19, v13

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move-object/from16 v20, v14

    move/from16 v31, v19

    goto/16 :goto_29

    :catch_b
    move-exception v0

    move/from16 v18, v12

    move/from16 v19, v13

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move-object/from16 v20, v14

    move/from16 v31, v19

    goto/16 :goto_2a

    :catch_c
    move-exception v0

    move/from16 v18, v12

    move/from16 v19, v13

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move-object/from16 v20, v14

    move/from16 v31, v19

    goto/16 :goto_2b

    :catch_d
    move-exception v0

    move/from16 v18, v12

    move/from16 v19, v13

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move-object/from16 v20, v14

    move/from16 v31, v19

    goto/16 :goto_2c

    :catch_e
    move-exception v0

    move/from16 v18, v12

    move/from16 v19, v13

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move-object/from16 v20, v14

    move/from16 v31, v19

    goto/16 :goto_2d

    :cond_3
    move/from16 v18, v12

    move/from16 v19, v13

    move-object/from16 v5, v16

    :try_start_5
    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z
    :try_end_5
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_7d
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_5} :catch_7c
    .catch Ljavax/xml/transform/TransformerException; {:try_start_5 .. :try_end_5} :catch_7b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_79
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v0, :cond_4

    :try_start_6
    sget-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v12, "ResourceManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_6
    .catch Lorg/xml/sax/SAXException; {:try_start_6 .. :try_end_6} :catch_14
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_6 .. :try_end_6} :catch_13
    .catch Ljavax/xml/transform/TransformerException; {:try_start_6 .. :try_end_6} :catch_12
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_11
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_10
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object/from16 v20, v14

    :try_start_7
    const-string v14, "addEntryToMac,"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " does not exist, creating file"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v12, v13}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Lorg/xml/sax/SAXException; {:try_start_7 .. :try_end_7} :catch_18
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_7 .. :try_end_7} :catch_17
    .catch Ljavax/xml/transform/TransformerException; {:try_start_7 .. :try_end_7} :catch_16
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_15
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_6

    :catch_f
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    goto/16 :goto_2

    :catch_10
    move-exception v0

    move-object/from16 v20, v14

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move/from16 v31, v19

    goto/16 :goto_29

    :catch_11
    move-exception v0

    move-object/from16 v20, v14

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move/from16 v31, v19

    goto/16 :goto_2a

    :catch_12
    move-exception v0

    move-object/from16 v20, v14

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move/from16 v31, v19

    goto/16 :goto_2b

    :catch_13
    move-exception v0

    move-object/from16 v20, v14

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move/from16 v31, v19

    goto/16 :goto_2c

    :catch_14
    move-exception v0

    move-object/from16 v20, v14

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move/from16 v31, v19

    goto/16 :goto_2d

    :cond_4
    move-object/from16 v20, v14

    :goto_6
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->createNewFile()Z
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_19
    .catch Lorg/xml/sax/SAXException; {:try_start_8 .. :try_end_8} :catch_18
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_8 .. :try_end_8} :catch_17
    .catch Ljavax/xml/transform/TransformerException; {:try_start_8 .. :try_end_8} :catch_16
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_15
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_7

    :catch_15
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    goto/16 :goto_1

    :catch_16
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    goto/16 :goto_3

    :catch_17
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    goto/16 :goto_4

    :catch_18
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    goto/16 :goto_5

    :catch_19
    move-exception v0

    move-object v12, v0

    :try_start_9
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_7
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v0
    :try_end_9
    .catch Lorg/xml/sax/SAXException; {:try_start_9 .. :try_end_9} :catch_78
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_9 .. :try_end_9} :catch_77
    .catch Ljavax/xml/transform/TransformerException; {:try_start_9 .. :try_end_9} :catch_76
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_75
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_74
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-nez v0, :cond_5

    const/4 v12, 0x1

    :try_start_a
    invoke-virtual {v1, v12}, Ljava/io/File;->setWritable(Z)Z
    :try_end_a
    .catch Lorg/xml/sax/SAXException; {:try_start_a .. :try_end_a} :catch_18
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_a .. :try_end_a} :catch_17
    .catch Ljavax/xml/transform/TransformerException; {:try_start_a .. :try_end_a} :catch_16
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_15
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_5
    :try_start_b
    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    move-object v15, v0

    const-string/jumbo v0, "policy"

    invoke-interface {v15, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v15, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_b
    .catch Lorg/xml/sax/SAXException; {:try_start_b .. :try_end_b} :catch_78
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_b .. :try_end_b} :catch_77
    .catch Ljavax/xml/transform/TransformerException; {:try_start_b .. :try_end_b} :catch_76
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_75
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_74
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move/from16 v13, v19

    :goto_8
    :try_start_c
    invoke-interface {v15}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Element;->normalize()V

    const-string/jumbo v0, "policy"

    invoke-interface {v15, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v12, 0x0

    const/4 v14, 0x0

    invoke-interface {v0, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v16

    check-cast v16, Lorg/w3c/dom/Element;

    move-object/from16 v12, v16

    const-string/jumbo v14, "signer"

    invoke-interface {v12, v14}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-string/jumbo v24, "service"

    move-object/from16 v25, v24

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    invoke-interface {v15, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v23

    move-object/from16 v27, v23

    move-object/from16 v28, v0

    const-string/jumbo v0, "name"

    move-object/from16 v29, v5

    move-object/from16 v5, v27

    invoke-interface {v5, v0, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "seinfo"

    invoke-interface {v5, v0, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Lorg/xml/sax/SAXException; {:try_start_c .. :try_end_c} :catch_73
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_c .. :try_end_c} :catch_72
    .catch Ljavax/xml/transform/TransformerException; {:try_start_c .. :try_end_c} :catch_71
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_70
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6f
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v9, :cond_6

    :try_start_d
    const-string/jumbo v0, "space"

    invoke-interface {v5, v0, v9}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :catch_1a
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move/from16 v31, v13

    goto/16 :goto_29

    :catch_1b
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move/from16 v31, v13

    goto/16 :goto_2a

    :catch_1c
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move/from16 v31, v13

    goto/16 :goto_2b

    :catch_1d
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move/from16 v31, v13

    goto/16 :goto_2c

    :catch_1e
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move/from16 v31, v13

    goto/16 :goto_2d

    :cond_6
    :goto_9
    if-eqz v10, :cond_7

    const-string v0, "allowSpace"

    invoke-interface {v5, v0, v10}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    if-eqz v11, :cond_8

    const-string v0, "containerAllowSpace"

    invoke-interface {v5, v0, v11}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Lorg/xml/sax/SAXException; {:try_start_d .. :try_end_d} :catch_1e
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_d .. :try_end_d} :catch_1d
    .catch Ljavax/xml/transform/TransformerException; {:try_start_d .. :try_end_d} :catch_1c
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1b
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1a
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :cond_8
    :try_start_e
    sget v0, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I
    :try_end_e
    .catch Lorg/xml/sax/SAXException; {:try_start_e .. :try_end_e} :catch_73
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_e .. :try_end_e} :catch_72
    .catch Ljavax/xml/transform/TransformerException; {:try_start_e .. :try_end_e} :catch_71
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_70
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6f
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-ne v6, v0, :cond_a

    :try_start_f
    const-string/jumbo v0, "sdcarduserid"
    :try_end_f
    .catch Lorg/xml/sax/SAXException; {:try_start_f .. :try_end_f} :catch_2d
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_f .. :try_end_f} :catch_2c
    .catch Ljavax/xml/transform/TransformerException; {:try_start_f .. :try_end_f} :catch_2b
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_29
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    move-object/from16 v30, v11

    :try_start_10
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v0, v11}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_9

    sget-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v11, "ResourceManager"
    :try_end_10
    .catch Lorg/xml/sax/SAXException; {:try_start_10 .. :try_end_10} :catch_28
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_10 .. :try_end_10} :catch_27
    .catch Ljavax/xml/transform/TransformerException; {:try_start_10 .. :try_end_10} :catch_26
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_25
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_24
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :try_start_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_11
    .catch Lorg/xml/sax/SAXException; {:try_start_11 .. :try_end_11} :catch_23
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_11 .. :try_end_11} :catch_22
    .catch Ljavax/xml/transform/TransformerException; {:try_start_11 .. :try_end_11} :catch_21
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_20
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1f
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    move/from16 v31, v13

    :try_start_12
    const-string v13, "addwhitelistentrytomac - package = "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v13, "whitelisted to access sdcard"

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Lorg/xml/sax/SAXException; {:try_start_12 .. :try_end_12} :catch_32
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_12 .. :try_end_12} :catch_31
    .catch Ljavax/xml/transform/TransformerException; {:try_start_12 .. :try_end_12} :catch_30
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_2f
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2e
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_f

    :catch_1f
    move-exception v0

    move/from16 v31, v13

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v1, p0

    goto :goto_a

    :catch_20
    move-exception v0

    move/from16 v31, v13

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v1, p0

    goto :goto_b

    :catch_21
    move-exception v0

    move/from16 v31, v13

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v1, p0

    goto :goto_c

    :catch_22
    move-exception v0

    move/from16 v31, v13

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v1, p0

    goto :goto_d

    :catch_23
    move-exception v0

    move/from16 v31, v13

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v1, p0

    goto :goto_e

    :cond_9
    move/from16 v31, v13

    goto/16 :goto_f

    :catch_24
    move-exception v0

    move/from16 v31, v13

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    :goto_a
    goto/16 :goto_29

    :catch_25
    move-exception v0

    move/from16 v31, v13

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    :goto_b
    goto/16 :goto_2a

    :catch_26
    move-exception v0

    move/from16 v31, v13

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    :goto_c
    goto/16 :goto_2b

    :catch_27
    move-exception v0

    move/from16 v31, v13

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    :goto_d
    goto/16 :goto_2c

    :catch_28
    move-exception v0

    move/from16 v31, v13

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    :goto_e
    goto/16 :goto_2d

    :catch_29
    move-exception v0

    move-object/from16 v30, v11

    move/from16 v31, v13

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    goto/16 :goto_29

    :catch_2a
    move-exception v0

    move-object/from16 v30, v11

    move/from16 v31, v13

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    goto/16 :goto_2a

    :catch_2b
    move-exception v0

    move-object/from16 v30, v11

    move/from16 v31, v13

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    goto/16 :goto_2b

    :catch_2c
    move-exception v0

    move-object/from16 v30, v11

    move/from16 v31, v13

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    goto/16 :goto_2c

    :catch_2d
    move-exception v0

    move-object/from16 v30, v11

    move/from16 v31, v13

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    goto/16 :goto_2d

    :cond_a
    move-object/from16 v30, v11

    move/from16 v31, v13

    :goto_f
    :try_start_13
    sget v0, Lcom/android/server/ResourceManager;->APM_TYPE:I
    :try_end_13
    .catch Lorg/xml/sax/SAXException; {:try_start_13 .. :try_end_13} :catch_6e
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_13 .. :try_end_13} :catch_6d
    .catch Ljavax/xml/transform/TransformerException; {:try_start_13 .. :try_end_13} :catch_6c
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_6b
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_6a
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    if-ne v6, v0, :cond_b

    :try_start_14
    const-string v0, "apmWL"

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v1, "ResourceManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "addwhitelistentrytomac - package = "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v13, "whitelisted to access critical modules"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v1, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catch Lorg/xml/sax/SAXException; {:try_start_14 .. :try_end_14} :catch_32
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_14 .. :try_end_14} :catch_31
    .catch Ljavax/xml/transform/TransformerException; {:try_start_14 .. :try_end_14} :catch_30
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_2f
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_2e
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto :goto_15

    :catch_2e
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    :goto_10
    move-object/from16 v1, p0

    goto/16 :goto_29

    :catch_2f
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    :goto_11
    move-object/from16 v1, p0

    goto/16 :goto_2a

    :catch_30
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    :goto_12
    move-object/from16 v1, p0

    goto/16 :goto_2b

    :catch_31
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    :goto_13
    move-object/from16 v1, p0

    goto/16 :goto_2c

    :catch_32
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    :goto_14
    move-object/from16 v1, p0

    goto/16 :goto_2d

    :cond_b
    :goto_15
    :try_start_15
    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z
    :try_end_15
    .catch Lorg/xml/sax/SAXException; {:try_start_15 .. :try_end_15} :catch_6e
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_15 .. :try_end_15} :catch_6d
    .catch Ljavax/xml/transform/TransformerException; {:try_start_15 .. :try_end_15} :catch_6c
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_6b
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_6a
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    if-eqz v0, :cond_c

    :try_start_16
    sget-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v1, "ResourceManager"

    const-string v11, "addwhitelistentrytomac - done with preparing entry"

    invoke-virtual {v0, v1, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catch Lorg/xml/sax/SAXException; {:try_start_16 .. :try_end_16} :catch_32
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_16 .. :try_end_16} :catch_31
    .catch Ljavax/xml/transform/TransformerException; {:try_start_16 .. :try_end_16} :catch_30
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_2f
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_2e
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    :cond_c
    :try_start_17
    const-string/jumbo v0, "signer"

    invoke-interface {v15, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    const-string/jumbo v1, "seinfo"

    invoke-interface {v15, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    const-string v11, "allow-all"

    invoke-interface {v15, v11}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v11

    const-string/jumbo v13, "signature"

    invoke-interface {v0, v13, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v13, "value"

    invoke-interface {v1, v13, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catch Lorg/xml/sax/SAXException; {:try_start_17 .. :try_end_17} :catch_6e
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_17 .. :try_end_17} :catch_6d
    .catch Ljavax/xml/transform/TransformerException; {:try_start_17 .. :try_end_17} :catch_6c
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_6b
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_6a
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    if-eqz v9, :cond_d

    :try_start_18
    const-string/jumbo v13, "space"

    invoke-interface {v1, v13, v9}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    if-eqz v10, :cond_e

    const-string v13, "allowSpace"

    invoke-interface {v1, v13, v10}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catch Lorg/xml/sax/SAXException; {:try_start_18 .. :try_end_18} :catch_32
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_18 .. :try_end_18} :catch_31
    .catch Ljavax/xml/transform/TransformerException; {:try_start_18 .. :try_end_18} :catch_30
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_2f
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_2e
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    :cond_e
    const/4 v13, 0x0

    :goto_16
    move-object/from16 v32, v8

    :try_start_19
    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8
    :try_end_19
    .catch Lorg/xml/sax/SAXException; {:try_start_19 .. :try_end_19} :catch_69
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_19 .. :try_end_19} :catch_68
    .catch Ljavax/xml/transform/TransformerException; {:try_start_19 .. :try_end_19} :catch_67
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_66
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_65
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    if-ge v13, v8, :cond_1b

    :try_start_1a
    invoke-interface {v14, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Element;
    :try_end_1a
    .catch Lorg/xml/sax/SAXException; {:try_start_1a .. :try_end_1a} :catch_50
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1a .. :try_end_1a} :catch_4f
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1a .. :try_end_1a} :catch_4e
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_4d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_4c
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    move-object/from16 v33, v9

    :try_start_1b
    const-string/jumbo v9, "signature"

    invoke-interface {v8, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1a

    invoke-static {v8, v3}, Lcom/android/server/ResourceManager;->checkTrustedEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v9

    if-eqz v9, :cond_17

    sget-boolean v16, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z
    :try_end_1b
    .catch Lorg/xml/sax/SAXException; {:try_start_1b .. :try_end_1b} :catch_4b
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1b .. :try_end_1b} :catch_4a
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1b .. :try_end_1b} :catch_49
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_48
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_47
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    if-eqz v16, :cond_f

    :try_start_1c
    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    move-object/from16 v34, v8

    const-string v8, "ResourceManager"
    :try_end_1c
    .catch Lorg/xml/sax/SAXException; {:try_start_1c .. :try_end_1c} :catch_3c
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1c .. :try_end_1c} :catch_3b
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1c .. :try_end_1c} :catch_3a
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_39
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_38
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    move-object/from16 v35, v10

    :try_start_1d
    const-string v10, "Exist elem not null. Package Name already exists"

    invoke-virtual {v2, v8, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catch Lorg/xml/sax/SAXException; {:try_start_1d .. :try_end_1d} :catch_37
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1d .. :try_end_1d} :catch_36
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1d .. :try_end_1d} :catch_35
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_34
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_33
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    goto :goto_17

    :catch_33
    move-exception v0

    goto/16 :goto_10

    :catch_34
    move-exception v0

    goto/16 :goto_11

    :catch_35
    move-exception v0

    goto/16 :goto_12

    :catch_36
    move-exception v0

    goto/16 :goto_13

    :catch_37
    move-exception v0

    goto/16 :goto_14

    :catch_38
    move-exception v0

    move-object/from16 v35, v10

    move-object/from16 v1, p0

    goto/16 :goto_29

    :catch_39
    move-exception v0

    move-object/from16 v35, v10

    move-object/from16 v1, p0

    goto/16 :goto_2a

    :catch_3a
    move-exception v0

    move-object/from16 v35, v10

    move-object/from16 v1, p0

    goto/16 :goto_2b

    :catch_3b
    move-exception v0

    move-object/from16 v35, v10

    move-object/from16 v1, p0

    goto/16 :goto_2c

    :catch_3c
    move-exception v0

    move-object/from16 v35, v10

    move-object/from16 v1, p0

    goto/16 :goto_2d

    :cond_f
    move-object/from16 v34, v8

    move-object/from16 v35, v10

    :goto_17
    :try_start_1e
    sget v2, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-ne v6, v2, :cond_13

    const-string/jumbo v2, "sdcarduserid"

    invoke-interface {v9, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/android/server/ResourceManager;->checkUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    sget-boolean v2, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v2, :cond_10

    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "ResourceManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1e
    .catch Lorg/xml/sax/SAXException; {:try_start_1e .. :try_end_1e} :catch_41
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1e .. :try_end_1e} :catch_40
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1e .. :try_end_1e} :catch_3f
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_3e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_3d
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    move-object/from16 v36, v15

    :try_start_1f
    const-string v15, "addEntryToMac, Existing "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " entry for "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", return true and continue with next step"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v8, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catch Lorg/xml/sax/SAXException; {:try_start_1f .. :try_end_1f} :catch_46
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1f .. :try_end_1f} :catch_45
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1f .. :try_end_1f} :catch_44
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_43
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_42
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    goto :goto_18

    :cond_10
    move-object/from16 v36, v15

    :goto_18
    monitor-exit v7

    const/4 v2, 0x0

    return v2

    :cond_11
    move-object/from16 v36, v15

    const/4 v2, 0x0

    :try_start_20
    const-string/jumbo v8, "sdcarduserid"

    invoke-interface {v9, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_12

    const-string/jumbo v8, "sdcarduserid"

    invoke-interface {v9, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v10, ""

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "sdcarduserid"

    invoke-interface {v9, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    goto :goto_19

    :cond_12
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    :goto_19
    const-string/jumbo v8, "sdcarduserid"

    invoke-interface {v9, v8, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x1

    goto/16 :goto_1b

    :cond_13
    move-object/from16 v36, v15

    sget v2, Lcom/android/server/ResourceManager;->APM_TYPE:I

    if-ne v6, v2, :cond_18

    const-string v2, "apmWL"

    invoke-interface {v9, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/android/server/ResourceManager;->checkUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    sget-boolean v2, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v2, :cond_14

    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "ResourceManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "addEntryToMac, Existing "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " entry for "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", return true and continue with next step"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v8, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catch Lorg/xml/sax/SAXException; {:try_start_20 .. :try_end_20} :catch_46
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_20 .. :try_end_20} :catch_45
    .catch Ljavax/xml/transform/TransformerException; {:try_start_20 .. :try_end_20} :catch_44
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_43
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_42
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    :cond_14
    monitor-exit v7

    const/4 v2, 0x0

    return v2

    :cond_15
    const/4 v2, 0x0

    :try_start_21
    const-string v8, "apmWL"

    invoke-interface {v9, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_16

    const-string v8, "apmWL"

    invoke-interface {v9, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v10, ""

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_16

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "apmWL"

    invoke-interface {v9, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    goto :goto_1a

    :cond_16
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    :goto_1a
    const-string v8, "apmWL"

    invoke-interface {v9, v8, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x1

    goto/16 :goto_1b

    :catch_3d
    move-exception v0

    move-object/from16 v36, v15

    move-object/from16 v1, p0

    goto/16 :goto_29

    :catch_3e
    move-exception v0

    move-object/from16 v36, v15

    move-object/from16 v1, p0

    goto/16 :goto_2a

    :catch_3f
    move-exception v0

    move-object/from16 v36, v15

    move-object/from16 v1, p0

    goto/16 :goto_2b

    :catch_40
    move-exception v0

    move-object/from16 v36, v15

    move-object/from16 v1, p0

    goto/16 :goto_2c

    :catch_41
    move-exception v0

    move-object/from16 v36, v15

    move-object/from16 v1, p0

    goto/16 :goto_2d

    :cond_17
    move-object/from16 v34, v8

    move-object/from16 v35, v10

    move-object/from16 v36, v15

    :cond_18
    invoke-interface {v14, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2, v5}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    sget-boolean v2, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v2, :cond_19

    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "ResourceManager"

    const-string v10, "addEntryToMac, signature match found. Appending elem"

    invoke-virtual {v2, v8, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catch Lorg/xml/sax/SAXException; {:try_start_21 .. :try_end_21} :catch_46
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_21 .. :try_end_21} :catch_45
    .catch Ljavax/xml/transform/TransformerException; {:try_start_21 .. :try_end_21} :catch_44
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_43
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_42
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    :cond_19
    const/4 v2, 0x1

    nop

    move v8, v2

    goto/16 :goto_1b

    :catch_42
    move-exception v0

    goto/16 :goto_1c

    :catch_43
    move-exception v0

    goto/16 :goto_1d

    :catch_44
    move-exception v0

    goto/16 :goto_1e

    :catch_45
    move-exception v0

    goto/16 :goto_1f

    :catch_46
    move-exception v0

    goto/16 :goto_20

    :cond_1a
    move-object/from16 v34, v8

    move-object/from16 v35, v10

    move-object/from16 v36, v15

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v8, v32

    move-object/from16 v9, v33

    move-object/from16 v16, v34

    move-object/from16 v2, p1

    goto/16 :goto_16

    :catch_47
    move-exception v0

    move-object/from16 v35, v10

    move-object/from16 v36, v15

    move-object/from16 v1, p0

    goto/16 :goto_29

    :catch_48
    move-exception v0

    move-object/from16 v35, v10

    move-object/from16 v36, v15

    move-object/from16 v1, p0

    goto/16 :goto_2a

    :catch_49
    move-exception v0

    move-object/from16 v35, v10

    move-object/from16 v36, v15

    move-object/from16 v1, p0

    goto/16 :goto_2b

    :catch_4a
    move-exception v0

    move-object/from16 v35, v10

    move-object/from16 v36, v15

    move-object/from16 v1, p0

    goto/16 :goto_2c

    :catch_4b
    move-exception v0

    move-object/from16 v35, v10

    move-object/from16 v36, v15

    move-object/from16 v1, p0

    goto/16 :goto_2d

    :catch_4c
    move-exception v0

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v36, v15

    move-object/from16 v1, p0

    goto/16 :goto_29

    :catch_4d
    move-exception v0

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v36, v15

    move-object/from16 v1, p0

    goto/16 :goto_2a

    :catch_4e
    move-exception v0

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v36, v15

    move-object/from16 v1, p0

    goto/16 :goto_2b

    :catch_4f
    move-exception v0

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v36, v15

    move-object/from16 v1, p0

    goto/16 :goto_2c

    :catch_50
    move-exception v0

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v36, v15

    move-object/from16 v1, p0

    goto/16 :goto_2d

    :cond_1b
    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v36, v15

    move-object/from16 v34, v16

    move/from16 v8, v18

    :goto_1b
    if-nez v8, :cond_1c

    :try_start_22
    invoke-interface {v0, v11}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_22
    .catch Lorg/xml/sax/SAXException; {:try_start_22 .. :try_end_22} :catch_55
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_22 .. :try_end_22} :catch_54
    .catch Ljavax/xml/transform/TransformerException; {:try_start_22 .. :try_end_22} :catch_53
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_52
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_51
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    goto :goto_21

    :catch_51
    move-exception v0

    move/from16 v18, v8

    :goto_1c
    move-object/from16 v15, v36

    goto/16 :goto_10

    :catch_52
    move-exception v0

    move/from16 v18, v8

    :goto_1d
    move-object/from16 v15, v36

    goto/16 :goto_11

    :catch_53
    move-exception v0

    move/from16 v18, v8

    :goto_1e
    move-object/from16 v15, v36

    goto/16 :goto_12

    :catch_54
    move-exception v0

    move/from16 v18, v8

    :goto_1f
    move-object/from16 v15, v36

    goto/16 :goto_13

    :catch_55
    move-exception v0

    move/from16 v18, v8

    :goto_20
    move-object/from16 v15, v36

    goto/16 :goto_14

    :cond_1c
    :goto_21
    move-object/from16 v15, v36

    :try_start_23
    invoke-interface {v15}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Element;->normalize()V

    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v9
    :try_end_23
    .catch Lorg/xml/sax/SAXException; {:try_start_23 .. :try_end_23} :catch_64
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_23 .. :try_end_23} :catch_63
    .catch Ljavax/xml/transform/TransformerException; {:try_start_23 .. :try_end_23} :catch_62
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_61
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_60
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    const/4 v10, 0x0

    if-eqz v31, :cond_1d

    :try_start_24
    new-instance v13, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v13, v15}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V
    :try_end_24
    .catch Lorg/xml/sax/SAXException; {:try_start_24 .. :try_end_24} :catch_5a
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_24 .. :try_end_24} :catch_59
    .catch Ljavax/xml/transform/TransformerException; {:try_start_24 .. :try_end_24} :catch_58
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_57
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_56
    .catchall {:try_start_24 .. :try_end_24} :catchall_0

    move-object v10, v13

    goto :goto_22

    :catch_56
    move-exception v0

    move/from16 v18, v8

    goto/16 :goto_10

    :catch_57
    move-exception v0

    move/from16 v18, v8

    goto/16 :goto_11

    :catch_58
    move-exception v0

    move/from16 v18, v8

    goto/16 :goto_12

    :catch_59
    move-exception v0

    move/from16 v18, v8

    goto/16 :goto_13

    :catch_5a
    move-exception v0

    move/from16 v18, v8

    goto/16 :goto_14

    :cond_1d
    :try_start_25
    new-instance v13, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v13, v12}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    move-object v10, v13

    :goto_22
    new-instance v13, Ljavax/xml/transform/stream/StreamResult;
    :try_end_25
    .catch Lorg/xml/sax/SAXException; {:try_start_25 .. :try_end_25} :catch_64
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_25 .. :try_end_25} :catch_63
    .catch Ljavax/xml/transform/TransformerException; {:try_start_25 .. :try_end_25} :catch_62
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_61
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_60
    .catchall {:try_start_25 .. :try_end_25} :catchall_0

    move-object/from16 v37, v1

    move-object/from16 v1, p0

    :try_start_26
    invoke-direct {v13, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    invoke-virtual {v9, v10, v13}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v16

    if-eqz v16, :cond_1e

    move-object/from16 v38, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/io/File;->setWritable(Z)Z
    :try_end_26
    .catch Lorg/xml/sax/SAXException; {:try_start_26 .. :try_end_26} :catch_5f
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_26 .. :try_end_26} :catch_5e
    .catch Ljavax/xml/transform/TransformerException; {:try_start_26 .. :try_end_26} :catch_5d
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_5c
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_5b
    .catchall {:try_start_26 .. :try_end_26} :catchall_0

    goto :goto_23

    :cond_1e
    move-object/from16 v38, v0

    :goto_23
    monitor-exit v7

    const/4 v0, 0x0

    return v0

    :catch_5b
    move-exception v0

    goto :goto_24

    :catch_5c
    move-exception v0

    goto :goto_25

    :catch_5d
    move-exception v0

    goto :goto_26

    :catch_5e
    move-exception v0

    goto :goto_27

    :catch_5f
    move-exception v0

    goto :goto_28

    :catch_60
    move-exception v0

    move-object/from16 v1, p0

    :goto_24
    move/from16 v18, v8

    goto/16 :goto_29

    :catch_61
    move-exception v0

    move-object/from16 v1, p0

    :goto_25
    move/from16 v18, v8

    goto/16 :goto_2a

    :catch_62
    move-exception v0

    move-object/from16 v1, p0

    :goto_26
    move/from16 v18, v8

    goto/16 :goto_2b

    :catch_63
    move-exception v0

    move-object/from16 v1, p0

    :goto_27
    move/from16 v18, v8

    goto/16 :goto_2c

    :catch_64
    move-exception v0

    move-object/from16 v1, p0

    :goto_28
    move/from16 v18, v8

    goto/16 :goto_2d

    :catch_65
    move-exception v0

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v1, p0

    goto/16 :goto_29

    :catch_66
    move-exception v0

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v1, p0

    goto/16 :goto_2a

    :catch_67
    move-exception v0

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v1, p0

    goto/16 :goto_2b

    :catch_68
    move-exception v0

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v1, p0

    goto/16 :goto_2c

    :catch_69
    move-exception v0

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v1, p0

    goto/16 :goto_2d

    :catch_6a
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v1, p0

    goto/16 :goto_29

    :catch_6b
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v1, p0

    goto/16 :goto_2a

    :catch_6c
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v1, p0

    goto/16 :goto_2b

    :catch_6d
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v1, p0

    goto/16 :goto_2c

    :catch_6e
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v1, p0

    goto/16 :goto_2d

    :catch_6f
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move/from16 v31, v13

    goto/16 :goto_29

    :catch_70
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move/from16 v31, v13

    goto/16 :goto_2a

    :catch_71
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move/from16 v31, v13

    goto/16 :goto_2b

    :catch_72
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move/from16 v31, v13

    goto/16 :goto_2c

    :catch_73
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move/from16 v31, v13

    goto/16 :goto_2d

    :catch_74
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move/from16 v31, v19

    goto/16 :goto_29

    :catch_75
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move/from16 v31, v19

    goto/16 :goto_2a

    :catch_76
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move/from16 v31, v19

    goto/16 :goto_2b

    :catch_77
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move/from16 v31, v19

    goto/16 :goto_2c

    :catch_78
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move/from16 v31, v19

    goto/16 :goto_2d

    :catch_79
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move-object/from16 v20, v14

    move/from16 v31, v19

    goto :goto_29

    :catch_7a
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move-object/from16 v20, v14

    move/from16 v31, v19

    goto :goto_2a

    :catch_7b
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move-object/from16 v20, v14

    move/from16 v31, v19

    goto/16 :goto_2b

    :catch_7c
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move-object/from16 v20, v14

    move/from16 v31, v19

    goto/16 :goto_2c

    :catch_7d
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move-object/from16 v20, v14

    move/from16 v31, v19

    goto/16 :goto_2d

    :catch_7e
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move/from16 v18, v12

    move/from16 v19, v13

    move-object/from16 v20, v14

    move/from16 v31, v19

    :goto_29
    :try_start_27
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2f

    :catch_7f
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move/from16 v18, v12

    move/from16 v19, v13

    move-object/from16 v20, v14

    move/from16 v31, v19

    :goto_2a
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2e

    :catch_80
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move/from16 v18, v12

    move/from16 v19, v13

    move-object/from16 v20, v14

    move/from16 v31, v19

    :goto_2b
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto :goto_2e

    :catch_81
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move/from16 v18, v12

    move/from16 v19, v13

    move-object/from16 v20, v14

    move/from16 v31, v19

    :goto_2c
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_2e

    :catch_82
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move/from16 v18, v12

    move/from16 v19, v13

    move-object/from16 v20, v14

    move/from16 v31, v19

    :goto_2d
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_0

    :goto_2e
    nop

    :goto_2f
    const/4 v0, -0x1

    monitor-exit v7

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method private static checkTrustedEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_1

    sget-boolean v1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "ResourceManager"

    const-string v3, "checkTrustedEntryExists: curElem is null"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0

    :cond_1
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    nop

    :goto_0
    if-eqz v1, :cond_4

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "seinfo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "name"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "ResourceManager"

    const-string v4, "checkTrustedEntryExists, Match found..returning elem"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lorg/w3c/dom/Element;

    goto :goto_0

    :cond_4
    :goto_1
    return-object v0
.end method

.method private static checkUser(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v1, "ResourceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkUser: existUsers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", newUser="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/ResourceManager;
    .locals 2

    const-class v0, Lcom/android/server/ResourceManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/ResourceManager;->instance:Lcom/android/server/ResourceManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/ResourceManager;

    invoke-direct {v1, p0}, Lcom/android/server/ResourceManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/ResourceManager;->instance:Lcom/android/server/ResourceManager;

    :cond_0
    sget-object v1, Lcom/android/server/ResourceManager;->instance:Lcom/android/server/ResourceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static getSignatureFromPackage(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_1

    sget-boolean v1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "ResourceManager"

    const-string/jumbo v3, "getSignatureFromPackage: packageName is null"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0

    :cond_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    move-object v2, v0

    const/high16 v3, 0x8000000

    :try_start_0
    invoke-interface {v1, p0, v3, p1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v3

    move-object v2, v3

    if-eqz v2, :cond_3

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    if-eqz v3, :cond_3

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {v3}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v3

    if-eqz v3, :cond_3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_0
    array-length v6, v3

    if-ge v5, v6, :cond_2

    aget-object v6, v3, v5

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return-object v4

    :cond_3
    nop

    return-object v0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private static getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    move-object p0, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v1, :cond_0

    move-object v0, p0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private static hashset_to_str_array(Ljava/util/HashSet;)[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ResourceManager"

    const-string v1, "Entered hashset_to_str_array in ResourceManager"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    aput-object v3, v0, v1

    nop

    move v1, v4

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "ResourceManager"

    const-string v1, " hashset_to_str_array returning null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method private loadContainerSetting(Ljava/lang/String;ILjava/lang/String;Z)I
    .locals 4

    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v1, "ResourceManager"

    const-string/jumbo v2, "loadContainerSetting_begin"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, -0x1

    if-nez p1, :cond_1

    sget-object v1, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "ResourceManager"

    const-string/jumbo v3, "loadContainerSetting, packageName is null"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    sget-boolean v1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "ResourceManager"

    const-string/jumbo v3, "loadContainerSetting, before calling updateAppInfo"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string/jumbo v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageManagerService;

    iput-object v1, p0, Lcom/android/server/ResourceManager;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/ResourceManager;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->getPackageManagerSEAMS()Lcom/android/server/pm/PackageManagerSEAMS;

    move-result-object v1

    invoke-virtual {v1, p1, p3, p4}, Lcom/android/server/pm/PackageManagerSEAMS;->updateAppInfoForPackage(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-boolean v1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "ResourceManager"

    const-string/jumbo v3, "loadContainerSetting, done with updateAppInfoForPackage"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x0

    :cond_4
    return v0
.end method

.method private removeAppFromBlacklistInternal(ILjava/lang/String;I)I
    .locals 9

    const/4 v0, 0x0

    sget-boolean v1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "ResourceManager"

    const-string/jumbo v3, "enter removeAppFromBlacklist"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget v1, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    const/4 v2, -0x1

    if-eq p3, v1, :cond_1

    return v2

    :cond_1
    invoke-static {p2}, Lcom/android/server/ResourceManager;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    sget-object v1, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "ResourceManager"

    const-string v4, " removeAppFromBlacklist failed, no packageName found"

    invoke-virtual {v1, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_2
    const/4 v1, 0x0

    invoke-static {p2, p1}, Lcom/android/server/ResourceManager;->getSignatureFromPackage(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_4

    sget-boolean v4, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v4, :cond_3

    sget-object v4, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "ResourceManager"

    const-string/jumbo v6, "removeAppFromWhitelist, signature is null, package not installed yet"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x1

    return v2

    :cond_4
    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/android/server/ResourceManager;->WHITELIST_MAC_PERM:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_5

    sget-object v5, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "ResourceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " removeAppFromBlacklist tempPackage = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "ResourceManager"

    const-string/jumbo v7, "removeAppFromBlacklist ok!11"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-static {v4, p2, p1, p3}, Lcom/android/server/ResourceManager;->removeBlacklistEntryFromMac(Ljava/io/File;Ljava/lang/String;II)Z

    move-result v5

    if-nez v5, :cond_6

    sget-object v5, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "ResourceManager"

    const-string/jumbo v7, "removeEntryFromMac failed"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_6
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, p2, p1, v6, v0}, Lcom/android/server/ResourceManager;->loadContainerSetting(Ljava/lang/String;ILjava/lang/String;Z)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v6, v2, :cond_7

    return v2

    :cond_7
    nop

    sget-boolean v2, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v2, :cond_8

    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "ResourceManager"

    const-string/jumbo v7, "leave removeAppFromBlacklist"

    invoke-virtual {v2, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return v5

    :catch_0
    move-exception v5

    return v2
.end method

.method protected static declared-synchronized removeBlacklistEntryFromMac(Ljava/io/File;Ljava/lang/String;II)Z
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-class v3, Lcom/android/server/ResourceManager;

    monitor-enter v3

    :try_start_0
    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "ResourceManager"

    const-string/jumbo v5, "removeBlacklistEntryFromMac_begin"

    invoke-virtual {v0, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v0

    :try_start_1
    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_13

    sget-boolean v8, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_27
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_26
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_25
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_24
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_23
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_1

    :try_start_2
    sget-object v8, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v10, "ResourceManager"

    const-string/jumbo v11, "macpermfile exists"

    invoke-virtual {v8, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    move/from16 v14, p3

    move-object/from16 v18, v5

    goto/16 :goto_a

    :catch_1
    move-exception v0

    move/from16 v14, p3

    move-object/from16 v18, v5

    goto/16 :goto_c

    :catch_2
    move-exception v0

    move/from16 v14, p3

    move-object/from16 v18, v5

    goto/16 :goto_e

    :catch_3
    move-exception v0

    move/from16 v14, p3

    move-object/from16 v18, v5

    goto/16 :goto_10

    :catch_4
    move-exception v0

    move/from16 v14, p3

    move-object/from16 v18, v5

    goto/16 :goto_12

    :cond_1
    :goto_0
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v8
    :try_end_3
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_27
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_26
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3 .. :try_end_3} :catch_25
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_24
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_23
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v8, :cond_2

    const/4 v8, 0x1

    :try_start_4
    invoke-virtual {v1, v8}, Ljava/io/File;->setWritable(Z)Z
    :try_end_4
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljavax/xml/transform/TransformerException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_2
    :try_start_5
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v8

    move-object v7, v8

    invoke-interface {v7}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Element;->normalize()V

    const-string/jumbo v8, "policy"

    invoke-interface {v7, v8}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    const/4 v10, 0x0

    invoke-interface {v8, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/Element;

    move-object v10, v11

    const-string/jumbo v11, "signer"

    invoke-interface {v10, v11}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    sget-boolean v14, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z
    :try_end_5
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_27
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_5} :catch_26
    .catch Ljavax/xml/transform/TransformerException; {:try_start_5 .. :try_end_5} :catch_25
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_24
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_23
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v14, :cond_3

    :try_start_6
    sget-object v14, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v15, "ResourceManager"

    const-string v9, "Looking for matching entry in /data/security/whitelist/mac_permissions.xml"

    invoke-virtual {v14, v15, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v9, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v14, "ResourceManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    const-string/jumbo v0, "the signer length is "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v14, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/xml/sax/SAXException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljavax/xml/transform/TransformerException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :cond_3
    move-object/from16 v16, v0

    :goto_1
    const/4 v0, 0x0

    :goto_2
    :try_start_7
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v0, v9, :cond_d

    invoke-interface {v11, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/Element;

    move-object v12, v9

    invoke-static {v12, v2}, Lcom/android/server/ResourceManager;->checkTrustedEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v9

    move-object v13, v9

    if-eqz v13, :cond_b

    sget v9, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I
    :try_end_7
    .catch Lorg/xml/sax/SAXException; {:try_start_7 .. :try_end_7} :catch_27
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_7 .. :try_end_7} :catch_26
    .catch Ljavax/xml/transform/TransformerException; {:try_start_7 .. :try_end_7} :catch_25
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_24
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_23
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move/from16 v14, p3

    if-ne v14, v9, :cond_c

    :try_start_8
    const-string/jumbo v9, "sdcarduseridBL"

    invoke-interface {v13, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_9

    sget-boolean v9, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v9, :cond_4

    sget-object v9, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v15, "ResourceManager"
    :try_end_8
    .catch Lorg/xml/sax/SAXException; {:try_start_8 .. :try_end_8} :catch_e
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_8 .. :try_end_8} :catch_d
    .catch Ljavax/xml/transform/TransformerException; {:try_start_8 .. :try_end_8} :catch_c
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_a
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move/from16 v17, v4

    :try_start_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_9
    .catch Lorg/xml/sax/SAXException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljavax/xml/transform/TransformerException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object/from16 v18, v5

    :try_start_a
    const-string/jumbo v5, "removeBlacklistEntryFromMac, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v13}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " match found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v15, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_5
    move-exception v0

    move-object/from16 v18, v5

    move/from16 v4, v17

    goto/16 :goto_a

    :catch_6
    move-exception v0

    move-object/from16 v18, v5

    move/from16 v4, v17

    goto/16 :goto_c

    :catch_7
    move-exception v0

    move-object/from16 v18, v5

    move/from16 v4, v17

    goto/16 :goto_e

    :catch_8
    move-exception v0

    move-object/from16 v18, v5

    move/from16 v4, v17

    goto/16 :goto_10

    :catch_9
    move-exception v0

    move-object/from16 v18, v5

    move/from16 v4, v17

    goto/16 :goto_12

    :cond_4
    move/from16 v17, v4

    move-object/from16 v18, v5

    :goto_3
    const-string/jumbo v4, "sdcarduseridBL"

    invoke-interface {v13, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    sget-boolean v4, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v4, :cond_5

    sget-object v4, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "ResourceManager"

    const-string/jumbo v9, "removeBlacklistEntryFrommac - User ID Match"

    invoke-virtual {v4, v5, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string/jumbo v4, "sdcarduseridBL"

    invoke-interface {v13, v4}, Lorg/w3c/dom/Element;->removeAttribute(Ljava/lang/String;)V

    const/4 v4, 0x1

    goto/16 :goto_5

    :cond_6
    sget-boolean v4, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v4, :cond_7

    sget-object v4, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "ResourceManager"

    const-string/jumbo v9, "it is for Generic Trusted with partial space match"

    invoke-virtual {v4, v5, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const-string/jumbo v4, "sdcarduseridBL"

    invoke-interface {v13, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/ResourceManager;->removeUser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    const-string/jumbo v5, "sdcarduseridBL"

    invoke-interface {v13, v5, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    nop

    move v4, v5

    goto :goto_5

    :cond_8
    goto :goto_4

    :cond_9
    move/from16 v17, v4

    move-object/from16 v18, v5

    sget-boolean v4, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v4, :cond_a

    sget-object v4, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "ResourceManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "removeBlacklistEntryFromMac, no match found for"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v5, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Lorg/xml/sax/SAXException; {:try_start_a .. :try_end_a} :catch_22
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_a .. :try_end_a} :catch_21
    .catch Ljavax/xml/transform/TransformerException; {:try_start_a .. :try_end_a} :catch_20
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1e
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_a
    monitor-exit v3

    const/4 v3, 0x0

    return v3

    :catch_a
    move-exception v0

    goto/16 :goto_9

    :catch_b
    move-exception v0

    goto/16 :goto_b

    :catch_c
    move-exception v0

    goto/16 :goto_d

    :catch_d
    move-exception v0

    goto/16 :goto_f

    :catch_e
    move-exception v0

    goto/16 :goto_11

    :cond_b
    move/from16 v14, p3

    :cond_c
    move/from16 v17, v4

    move-object/from16 v18, v5

    :goto_4
    add-int/lit8 v0, v0, 0x1

    move/from16 v4, v17

    move-object/from16 v5, v18

    goto/16 :goto_2

    :cond_d
    move/from16 v14, p3

    move/from16 v17, v4

    move-object/from16 v18, v5

    :goto_5
    if-eqz v4, :cond_11

    :try_start_b
    const-string/jumbo v0, "service"

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5
    :try_end_b
    .catch Lorg/xml/sax/SAXException; {:try_start_b .. :try_end_b} :catch_18
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_b .. :try_end_b} :catch_17
    .catch Ljavax/xml/transform/TransformerException; {:try_start_b .. :try_end_b} :catch_16
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_15
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_14
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-nez v5, :cond_e

    :try_start_c
    invoke-interface {v10, v12}, Lorg/w3c/dom/Element;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_c
    .catch Lorg/xml/sax/SAXException; {:try_start_c .. :try_end_c} :catch_13
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_c .. :try_end_c} :catch_12
    .catch Ljavax/xml/transform/TransformerException; {:try_start_c .. :try_end_c} :catch_11
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_10
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_f
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_6

    :catch_f
    move-exception v0

    goto/16 :goto_a

    :catch_10
    move-exception v0

    goto/16 :goto_c

    :catch_11
    move-exception v0

    goto/16 :goto_e

    :catch_12
    move-exception v0

    goto/16 :goto_10

    :catch_13
    move-exception v0

    goto/16 :goto_12

    :cond_e
    :goto_6
    :try_start_d
    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z
    :try_end_d
    .catch Lorg/xml/sax/SAXException; {:try_start_d .. :try_end_d} :catch_18
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_d .. :try_end_d} :catch_17
    .catch Ljavax/xml/transform/TransformerException; {:try_start_d .. :try_end_d} :catch_16
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_15
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_14
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-eqz v5, :cond_f

    :try_start_e
    sget-object v5, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v9, "ResourceManager"

    const-string/jumbo v15, "removeBlacklistEntryFromMac, Match found..deleted elem...writing to file"

    invoke-virtual {v5, v9, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Lorg/xml/sax/SAXException; {:try_start_e .. :try_end_e} :catch_13
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_e .. :try_end_e} :catch_12
    .catch Ljavax/xml/transform/TransformerException; {:try_start_e .. :try_end_e} :catch_11
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_10
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_f
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :cond_f
    :try_start_f
    invoke-interface {v7}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Element;->normalize()V

    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v9

    new-instance v15, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v15, v7}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    move-object/from16 v19, v0

    new-instance v0, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    invoke-virtual {v9, v15, v0}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    sget-boolean v17, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v17, :cond_10

    move-object/from16 v20, v0

    sget-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;
    :try_end_f
    .catch Lorg/xml/sax/SAXException; {:try_start_f .. :try_end_f} :catch_18
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_f .. :try_end_f} :catch_17
    .catch Ljavax/xml/transform/TransformerException; {:try_start_f .. :try_end_f} :catch_16
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_15
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_14
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    move/from16 v21, v4

    :try_start_10
    const-string v4, "ResourceManager"

    move-object/from16 v22, v5

    const-string v5, " removeBlacklistEntryFromMac, entry removed from mac_permissions.xml"

    invoke-virtual {v0, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_10
    move/from16 v21, v4

    :goto_7
    goto :goto_8

    :catch_14
    move-exception v0

    move/from16 v21, v4

    goto/16 :goto_a

    :catch_15
    move-exception v0

    move/from16 v21, v4

    goto/16 :goto_c

    :catch_16
    move-exception v0

    move/from16 v21, v4

    goto/16 :goto_e

    :catch_17
    move-exception v0

    move/from16 v21, v4

    goto/16 :goto_10

    :catch_18
    move-exception v0

    move/from16 v21, v4

    goto/16 :goto_12

    :cond_11
    move/from16 v21, v4

    sget-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "ResourceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " removeBlacklistEntryFromMac, No match for packageName:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ". Please check again"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/io/File;->setWritable(Z)Z
    :try_end_10
    .catch Lorg/xml/sax/SAXException; {:try_start_10 .. :try_end_10} :catch_1d
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_10 .. :try_end_10} :catch_1c
    .catch Ljavax/xml/transform/TransformerException; {:try_start_10 .. :try_end_10} :catch_1b
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_19
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :cond_12
    nop

    move/from16 v4, v21

    goto/16 :goto_14

    :catch_19
    move-exception v0

    move/from16 v4, v21

    goto/16 :goto_a

    :catch_1a
    move-exception v0

    move/from16 v4, v21

    goto/16 :goto_c

    :catch_1b
    move-exception v0

    move/from16 v4, v21

    goto/16 :goto_e

    :catch_1c
    move-exception v0

    move/from16 v4, v21

    goto/16 :goto_10

    :catch_1d
    move-exception v0

    move/from16 v4, v21

    goto/16 :goto_12

    :cond_13
    move/from16 v14, p3

    move-object/from16 v16, v0

    move/from16 v17, v4

    move-object/from16 v18, v5

    :try_start_11
    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_14

    sget-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "ResourceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeBlacklistEntryFromMac, "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " does not exist, creating file"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Lorg/xml/sax/SAXException; {:try_start_11 .. :try_end_11} :catch_22
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_11 .. :try_end_11} :catch_21
    .catch Ljavax/xml/transform/TransformerException; {:try_start_11 .. :try_end_11} :catch_20
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1e
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :cond_14
    monitor-exit v3

    const/4 v0, 0x0

    return v0

    :catch_1e
    move-exception v0

    move/from16 v4, v17

    goto :goto_a

    :catch_1f
    move-exception v0

    move/from16 v4, v17

    goto :goto_c

    :catch_20
    move-exception v0

    move/from16 v4, v17

    goto :goto_e

    :catch_21
    move-exception v0

    move/from16 v4, v17

    goto :goto_10

    :catch_22
    move-exception v0

    move/from16 v4, v17

    goto :goto_12

    :catch_23
    move-exception v0

    move/from16 v14, p3

    :goto_9
    move/from16 v17, v4

    move-object/from16 v18, v5

    :goto_a
    :try_start_12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_14

    :catch_24
    move-exception v0

    move/from16 v14, p3

    :goto_b
    move/from16 v17, v4

    move-object/from16 v18, v5

    :goto_c
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_13

    :catch_25
    move-exception v0

    move/from16 v14, p3

    :goto_d
    move/from16 v17, v4

    move-object/from16 v18, v5

    :goto_e
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto :goto_13

    :catch_26
    move-exception v0

    move/from16 v14, p3

    :goto_f
    move/from16 v17, v4

    move-object/from16 v18, v5

    :goto_10
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_13

    :catch_27
    move-exception v0

    move/from16 v14, p3

    :goto_11
    move/from16 v17, v4

    move-object/from16 v18, v5

    :goto_12
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :goto_13
    nop

    :goto_14
    monitor-exit v3

    return v4

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method private static removeUser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v1, "ResourceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "existUsers: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v1, v4

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    move-object v0, v5

    goto :goto_1

    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_5

    sget-boolean v3, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v3, :cond_4

    sget-object v3, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "ResourceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeUser, return: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-object v0

    :cond_5
    const/4 v3, 0x0

    return-object v3
.end method

.method protected static declared-synchronized removeWhitelistEntryFromMac(Ljava/io/File;Ljava/lang/String;II)Z
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    const-class v4, Lcom/android/server/ResourceManager;

    monitor-enter v4

    :try_start_0
    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "ResourceManager"

    const-string/jumbo v6, "removeWhitelistEntryFromMac_begin"

    invoke-virtual {v0, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v0

    :try_start_1
    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    const/4 v8, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_1e

    sget-boolean v9, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_2c
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_2b
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_2a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_29
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_28
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v9, :cond_1

    :try_start_2
    sget-object v9, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v11, "ResourceManager"

    const-string/jumbo v12, "macpermfile exists"

    invoke-virtual {v9, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object/from16 v18, v6

    goto/16 :goto_10

    :catch_1
    move-exception v0

    move-object/from16 v18, v6

    goto/16 :goto_11

    :catch_2
    move-exception v0

    move-object/from16 v18, v6

    goto/16 :goto_12

    :catch_3
    move-exception v0

    move-object/from16 v18, v6

    goto/16 :goto_13

    :catch_4
    move-exception v0

    move-object/from16 v18, v6

    goto/16 :goto_14

    :cond_1
    :goto_0
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v9
    :try_end_3
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_2c
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_2b
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3 .. :try_end_3} :catch_2a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_29
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_28
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v9, :cond_2

    const/4 v9, 0x1

    :try_start_4
    invoke-virtual {v1, v9}, Ljava/io/File;->setWritable(Z)Z
    :try_end_4
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljavax/xml/transform/TransformerException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_2
    :try_start_5
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v9

    move-object v8, v9

    invoke-interface {v8}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Element;->normalize()V

    const-string/jumbo v9, "policy"

    invoke-interface {v8, v9}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    const/4 v11, 0x0

    invoke-interface {v9, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    check-cast v12, Lorg/w3c/dom/Element;

    move-object v11, v12

    const-string/jumbo v12, "signer"

    invoke-interface {v11, v12}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    sget-boolean v15, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z
    :try_end_5
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_2c
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_5} :catch_2b
    .catch Ljavax/xml/transform/TransformerException; {:try_start_5 .. :try_end_5} :catch_2a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_29
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_28
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v15, :cond_3

    :try_start_6
    sget-object v15, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v10, "ResourceManager"

    move-object/from16 v16, v0

    const-string v0, "Looking for matching entry in /data/security/whitelist/mac_permissions.xml"

    invoke-virtual {v15, v10, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v10, "ResourceManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_6
    .catch Lorg/xml/sax/SAXException; {:try_start_6 .. :try_end_6} :catch_e
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_6 .. :try_end_6} :catch_d
    .catch Ljavax/xml/transform/TransformerException; {:try_start_6 .. :try_end_6} :catch_c
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_a
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move/from16 v17, v5

    :try_start_7
    const-string/jumbo v5, "the signer length is "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v10, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Lorg/xml/sax/SAXException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljavax/xml/transform/TransformerException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    :catch_5
    move-exception v0

    move-object/from16 v18, v6

    goto/16 :goto_b

    :catch_6
    move-exception v0

    move-object/from16 v18, v6

    goto/16 :goto_c

    :catch_7
    move-exception v0

    move-object/from16 v18, v6

    goto/16 :goto_d

    :catch_8
    move-exception v0

    move-object/from16 v18, v6

    goto/16 :goto_e

    :catch_9
    move-exception v0

    move-object/from16 v18, v6

    goto/16 :goto_f

    :catch_a
    move-exception v0

    move/from16 v17, v5

    move-object/from16 v18, v6

    goto/16 :goto_10

    :catch_b
    move-exception v0

    move/from16 v17, v5

    move-object/from16 v18, v6

    goto/16 :goto_11

    :catch_c
    move-exception v0

    move/from16 v17, v5

    move-object/from16 v18, v6

    goto/16 :goto_12

    :catch_d
    move-exception v0

    move/from16 v17, v5

    move-object/from16 v18, v6

    goto/16 :goto_13

    :catch_e
    move-exception v0

    move/from16 v17, v5

    move-object/from16 v18, v6

    goto/16 :goto_14

    :cond_3
    move-object/from16 v16, v0

    move/from16 v17, v5

    :goto_1
    const/4 v0, 0x0

    :goto_2
    :try_start_8
    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v0, v5, :cond_17

    invoke-interface {v12, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    move-object v13, v5

    invoke-static {v13, v2}, Lcom/android/server/ResourceManager;->checkTrustedEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    move-object v14, v5

    if-eqz v14, :cond_15

    sget v5, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-ne v3, v5, :cond_c

    const-string/jumbo v5, "sdcarduserid"

    invoke-interface {v14, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_4

    sget-object v5, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v10, "ResourceManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_8
    .catch Lorg/xml/sax/SAXException; {:try_start_8 .. :try_end_8} :catch_22
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_8 .. :try_end_8} :catch_21
    .catch Ljavax/xml/transform/TransformerException; {:try_start_8 .. :try_end_8} :catch_20
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1e
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object/from16 v18, v6

    :try_start_9
    const-string/jumbo v6, "removeWhitelistEntryFromMac, "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v14}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " match found for "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v10, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    move-object/from16 v18, v6

    :goto_3
    const-string/jumbo v5, "sdcarduserid"

    invoke-interface {v14, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_5

    sget-object v5, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "ResourceManager"

    const-string/jumbo v10, "removeWhitelistEntryFrommac - User ID Match"

    invoke-virtual {v5, v6, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string/jumbo v5, "sdcarduserid"

    invoke-interface {v14, v5}, Lorg/w3c/dom/Element;->removeAttribute(Ljava/lang/String;)V
    :try_end_9
    .catch Lorg/xml/sax/SAXException; {:try_start_9 .. :try_end_9} :catch_27
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_9 .. :try_end_9} :catch_26
    .catch Ljavax/xml/transform/TransformerException; {:try_start_9 .. :try_end_9} :catch_25
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_24
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_23
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const/4 v5, 0x1

    :try_start_a
    const-string v6, "apmWL"

    invoke-interface {v14, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    const-string v6, "apmWL"

    invoke-interface {v14, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v10, ""

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    :cond_6
    invoke-interface {v12, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6, v14}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_a
    .catch Lorg/xml/sax/SAXException; {:try_start_a .. :try_end_a} :catch_13
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_a .. :try_end_a} :catch_12
    .catch Ljavax/xml/transform/TransformerException; {:try_start_a .. :try_end_a} :catch_11
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_10
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_f
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_7

    :cond_7
    :try_start_b
    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_8

    sget-object v5, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "ResourceManager"

    const-string/jumbo v10, "it is for Generic Trusted with partial space match"

    invoke-virtual {v5, v6, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const-string/jumbo v5, "sdcarduserid"

    invoke-interface {v14, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/ResourceManager;->removeUser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    const-string/jumbo v6, "sdcarduserid"

    invoke-interface {v14, v6, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    nop

    :goto_4
    move v5, v6

    goto/16 :goto_7

    :cond_9
    goto :goto_5

    :cond_a
    move-object/from16 v18, v6

    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_b

    sget-object v5, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "ResourceManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "removeWhitelistEntryFromMac, no match found for"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v6, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Lorg/xml/sax/SAXException; {:try_start_b .. :try_end_b} :catch_27
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_b .. :try_end_b} :catch_26
    .catch Ljavax/xml/transform/TransformerException; {:try_start_b .. :try_end_b} :catch_25
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_24
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_23
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_b
    monitor-exit v4

    const/4 v4, 0x0

    return v4

    :cond_c
    move-object/from16 v18, v6

    :goto_5
    :try_start_c
    sget-object v5, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "ResourceManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "removeWhitelistEntryFromMac, resourceType = "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v6, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    sget v5, Lcom/android/server/ResourceManager;->APM_TYPE:I

    if-ne v3, v5, :cond_16

    const-string v5, "apmWL"

    invoke-interface {v14, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_13

    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_d

    sget-object v5, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "ResourceManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "removeWhitelistEntryFromMac, "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v14}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " match found for "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v6, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    const-string v5, "apmWL"

    invoke-interface {v14, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_e

    sget-object v5, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "ResourceManager"

    const-string/jumbo v10, "removeWhitelistEntryFrommac - User ID Match"

    invoke-virtual {v5, v6, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    const-string v5, "apmWL"

    invoke-interface {v14, v5}, Lorg/w3c/dom/Element;->removeAttribute(Ljava/lang/String;)V
    :try_end_c
    .catch Lorg/xml/sax/SAXException; {:try_start_c .. :try_end_c} :catch_27
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_c .. :try_end_c} :catch_26
    .catch Ljavax/xml/transform/TransformerException; {:try_start_c .. :try_end_c} :catch_25
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_24
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_23
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    const/4 v5, 0x1

    :try_start_d
    const-string/jumbo v6, "sdcarduserid"

    invoke-interface {v14, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_f

    const-string/jumbo v6, "sdcarduserid"

    invoke-interface {v14, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v10, ""

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    :cond_f
    invoke-interface {v12, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6, v14}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_d
    .catch Lorg/xml/sax/SAXException; {:try_start_d .. :try_end_d} :catch_13
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_d .. :try_end_d} :catch_12
    .catch Ljavax/xml/transform/TransformerException; {:try_start_d .. :try_end_d} :catch_11
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_f
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_7

    :cond_10
    :try_start_e
    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_11

    sget-object v5, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "ResourceManager"

    const-string/jumbo v10, "it is for Trusted with partial space match"

    invoke-virtual {v5, v6, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    const-string v5, "apmWL"

    invoke-interface {v14, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/ResourceManager;->removeUser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_12

    const-string v6, "apmWL"

    invoke-interface {v14, v6, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    goto/16 :goto_4

    :cond_12
    goto :goto_6

    :cond_13
    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_14

    sget-object v5, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "ResourceManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "removeWhitelistEntryFromMac, no match found for"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v6, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Lorg/xml/sax/SAXException; {:try_start_e .. :try_end_e} :catch_27
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_e .. :try_end_e} :catch_26
    .catch Ljavax/xml/transform/TransformerException; {:try_start_e .. :try_end_e} :catch_25
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_24
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_23
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :cond_14
    monitor-exit v4

    const/4 v4, 0x0

    return v4

    :cond_15
    move-object/from16 v18, v6

    :cond_16
    :goto_6
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v6, v18

    goto/16 :goto_2

    :cond_17
    move-object/from16 v18, v6

    move/from16 v5, v17

    :cond_18
    :goto_7
    if-eqz v5, :cond_1c

    :try_start_f
    const-string/jumbo v0, "service"

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6
    :try_end_f
    .catch Lorg/xml/sax/SAXException; {:try_start_f .. :try_end_f} :catch_18
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_f .. :try_end_f} :catch_17
    .catch Ljavax/xml/transform/TransformerException; {:try_start_f .. :try_end_f} :catch_16
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_15
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_14
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    if-nez v6, :cond_19

    :try_start_10
    invoke-interface {v11, v13}, Lorg/w3c/dom/Element;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_10
    .catch Lorg/xml/sax/SAXException; {:try_start_10 .. :try_end_10} :catch_13
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_10 .. :try_end_10} :catch_12
    .catch Ljavax/xml/transform/TransformerException; {:try_start_10 .. :try_end_10} :catch_11
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_f
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_8

    :catch_f
    move-exception v0

    goto/16 :goto_10

    :catch_10
    move-exception v0

    goto/16 :goto_11

    :catch_11
    move-exception v0

    goto/16 :goto_12

    :catch_12
    move-exception v0

    goto/16 :goto_13

    :catch_13
    move-exception v0

    goto/16 :goto_14

    :cond_19
    :goto_8
    :try_start_11
    sget-boolean v6, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z
    :try_end_11
    .catch Lorg/xml/sax/SAXException; {:try_start_11 .. :try_end_11} :catch_18
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_11 .. :try_end_11} :catch_17
    .catch Ljavax/xml/transform/TransformerException; {:try_start_11 .. :try_end_11} :catch_16
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_15
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_14
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    if-eqz v6, :cond_1a

    :try_start_12
    sget-object v6, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v10, "ResourceManager"

    const-string/jumbo v15, "removeWhitelistEntryFromMac, Match found..deleted elem...writing to file"

    invoke-virtual {v6, v10, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Lorg/xml/sax/SAXException; {:try_start_12 .. :try_end_12} :catch_13
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_12 .. :try_end_12} :catch_12
    .catch Ljavax/xml/transform/TransformerException; {:try_start_12 .. :try_end_12} :catch_11
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_10
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_f
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :cond_1a
    :try_start_13
    invoke-interface {v8}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Element;->normalize()V

    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v10

    new-instance v15, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v15, v8}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    move-object/from16 v19, v0

    new-instance v0, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    invoke-virtual {v10, v15, v0}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    sget-boolean v17, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v17, :cond_1b

    move-object/from16 v20, v0

    sget-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "ResourceManager"
    :try_end_13
    .catch Lorg/xml/sax/SAXException; {:try_start_13 .. :try_end_13} :catch_18
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_13 .. :try_end_13} :catch_17
    .catch Ljavax/xml/transform/TransformerException; {:try_start_13 .. :try_end_13} :catch_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_15
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_14
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    move/from16 v21, v5

    :try_start_14
    const-string v5, " removeWhitelistEntryFromMac, entry removed from mac_permissions.xml"

    invoke-virtual {v0, v3, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_1b
    move/from16 v21, v5

    :goto_9
    goto :goto_a

    :catch_14
    move-exception v0

    move/from16 v21, v5

    goto/16 :goto_10

    :catch_15
    move-exception v0

    move/from16 v21, v5

    goto/16 :goto_11

    :catch_16
    move-exception v0

    move/from16 v21, v5

    goto/16 :goto_12

    :catch_17
    move-exception v0

    move/from16 v21, v5

    goto/16 :goto_13

    :catch_18
    move-exception v0

    move/from16 v21, v5

    goto/16 :goto_14

    :cond_1c
    move/from16 v21, v5

    sget-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "ResourceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " removeWhitelistEntryFromMac, No match for packageName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ". Please check again"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/io/File;->setWritable(Z)Z
    :try_end_14
    .catch Lorg/xml/sax/SAXException; {:try_start_14 .. :try_end_14} :catch_1d
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_14 .. :try_end_14} :catch_1c
    .catch Ljavax/xml/transform/TransformerException; {:try_start_14 .. :try_end_14} :catch_1b
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_19
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    :cond_1d
    nop

    move/from16 v5, v21

    goto/16 :goto_16

    :catch_19
    move-exception v0

    move/from16 v5, v21

    goto/16 :goto_10

    :catch_1a
    move-exception v0

    move/from16 v5, v21

    goto/16 :goto_11

    :catch_1b
    move-exception v0

    move/from16 v5, v21

    goto/16 :goto_12

    :catch_1c
    move-exception v0

    move/from16 v5, v21

    goto/16 :goto_13

    :catch_1d
    move-exception v0

    move/from16 v5, v21

    goto/16 :goto_14

    :catch_1e
    move-exception v0

    move-object/from16 v18, v6

    move/from16 v5, v17

    goto/16 :goto_10

    :catch_1f
    move-exception v0

    move-object/from16 v18, v6

    move/from16 v5, v17

    goto/16 :goto_11

    :catch_20
    move-exception v0

    move-object/from16 v18, v6

    move/from16 v5, v17

    goto/16 :goto_12

    :catch_21
    move-exception v0

    move-object/from16 v18, v6

    move/from16 v5, v17

    goto/16 :goto_13

    :catch_22
    move-exception v0

    move-object/from16 v18, v6

    move/from16 v5, v17

    goto/16 :goto_14

    :cond_1e
    move-object/from16 v16, v0

    move/from16 v17, v5

    move-object/from16 v18, v6

    :try_start_15
    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "ResourceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeWhitelistEntryFromMac, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " does not exist, creating file"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catch Lorg/xml/sax/SAXException; {:try_start_15 .. :try_end_15} :catch_27
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_15 .. :try_end_15} :catch_26
    .catch Ljavax/xml/transform/TransformerException; {:try_start_15 .. :try_end_15} :catch_25
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_24
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_23
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    :cond_1f
    monitor-exit v4

    const/4 v0, 0x0

    return v0

    :catch_23
    move-exception v0

    :goto_b
    move/from16 v5, v17

    goto :goto_10

    :catch_24
    move-exception v0

    :goto_c
    move/from16 v5, v17

    goto :goto_11

    :catch_25
    move-exception v0

    :goto_d
    move/from16 v5, v17

    goto :goto_12

    :catch_26
    move-exception v0

    :goto_e
    move/from16 v5, v17

    goto :goto_13

    :catch_27
    move-exception v0

    :goto_f
    move/from16 v5, v17

    goto :goto_14

    :catch_28
    move-exception v0

    move/from16 v17, v5

    move-object/from16 v18, v6

    :goto_10
    :try_start_16
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_16

    :catch_29
    move-exception v0

    move/from16 v17, v5

    move-object/from16 v18, v6

    :goto_11
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_15

    :catch_2a
    move-exception v0

    move/from16 v17, v5

    move-object/from16 v18, v6

    :goto_12
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto :goto_15

    :catch_2b
    move-exception v0

    move/from16 v17, v5

    move-object/from16 v18, v6

    :goto_13
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_15

    :catch_2c
    move-exception v0

    move/from16 v17, v5

    move-object/from16 v18, v6

    :goto_14
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    :goto_15
    nop

    :goto_16
    monitor-exit v4

    return v5

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method


# virtual methods
.method public addAppToBlacklist(ILjava/lang/String;[Ljava/lang/String;I)I
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/ResourceManager;->addAppToBlacklistInternal(ILjava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public addAppToWhitelist(ILjava/lang/String;[Ljava/lang/String;I)I
    .locals 18

    move/from16 v7, p1

    move-object/from16 v8, p3

    move/from16 v9, p4

    const/4 v1, 0x0

    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "ResourceManager"

    const-string/jumbo v3, "enter addAppToWhitelist"

    invoke-virtual {v0, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v10, -0x1

    :try_start_0
    sget v0, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq v9, v0, :cond_1

    sget v0, Lcom/android/server/ResourceManager;->APM_TYPE:I

    if-eq v9, v0, :cond_1

    return v10

    :cond_1
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/android/server/ResourceManager;->WHITELIST_SEANDROID_FOLDER:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    sget-boolean v2, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "ResourceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " does not exist. Creating dir"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v2}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v0, v2, v2}, Ljava/io/File;->setWritable(ZZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    :cond_3
    nop

    invoke-static/range {p2 .. p2}, Lcom/android/server/ResourceManager;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_4

    sget-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "ResourceManager"

    const-string v3, " addAppToWhitelist failed, no packageName found"

    invoke-virtual {v0, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v10

    :cond_4
    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "ResourceManager"

    const-string v3, "addAppToWhitelist"

    invoke-virtual {v0, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const/4 v0, 0x0

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v11, v7}, Lcom/android/server/ResourceManager;->getSignatureFromPackage(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v12

    if-nez v8, :cond_7

    sget-boolean v3, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v3, :cond_6

    sget-object v3, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "ResourceManager"

    const-string v5, " Input Certificate is null"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const/16 v3, -0xe

    return v3

    :cond_7
    const/4 v13, 0x0

    if-nez v12, :cond_a

    sget-boolean v3, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v3, :cond_8

    sget-object v3, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "ResourceManager"

    const-string v5, "addAppToWhitelist, signature is null, package not installed yet"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    aget-object v2, v8, v13

    const/4 v1, 0x1

    :cond_9
    move/from16 v16, v0

    move v15, v1

    move-object v14, v2

    goto :goto_0

    :cond_a
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Ljava/lang/String;

    aget-object v3, v8, v13

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v0, 0x1

    sget-boolean v3, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v3, :cond_b

    sget-object v3, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "ResourceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addAppToWhitelist, certMatch: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    if-nez v0, :cond_9

    sget-boolean v3, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v3, :cond_c

    sget-object v3, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "ResourceManager"

    const-string v5, "addAppToWhitelist, input certificate does not match the certificate extracted from package"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    const/16 v3, -0xd

    return v3

    :goto_0
    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_d

    sget-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v1, "ResourceManager"

    const-string v2, "addAppToWhitelist - open whitelist/mac_permissions file"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/ResourceManager;->WHITELIST_MAC_PERM:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    :try_start_1
    invoke-static {v11, v8}, Lcom/android/server/pm/SELinuxMMAC;->getApplicationInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    if-eqz v1, :cond_14

    sget-object v1, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "ResourceManager"

    const-string v3, "addAppToWhitelist, Got Application Info, Seinfo is not null"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "default"

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    if-eqz v1, :cond_e

    :try_start_2
    const-string/jumbo v1, "untrusted"

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object/from16 v2, p0

    move-object v13, v6

    goto/16 :goto_2

    :cond_e
    :goto_1
    :try_start_3
    sget v1, Lcom/android/server/ResourceManager;->APM_TYPE:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    if-ne v9, v1, :cond_f

    :try_start_4
    const-string v1, "apm"

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_f
    move-object v1, v6

    move-object v2, v14

    move-object v3, v11

    move v4, v7

    move-object v5, v0

    move-object v13, v6

    move v6, v9

    :try_start_5
    invoke-static/range {v1 .. v6}, Lcom/android/server/ResourceManager;->addWhitelistEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;I)I

    move-result v1

    if-eqz v1, :cond_10

    sget-object v1, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "ResourceManager"

    const-string v3, "addWhitelistEntryToMac failed"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    return v10

    :cond_10
    move-object/from16 v2, p0

    :try_start_6
    invoke-direct {v2, v11, v7, v14, v15}, Lcom/android/server/ResourceManager;->loadContainerSetting(Ljava/lang/String;ILjava/lang/String;Z)I

    move-result v1

    if-ne v1, v10, :cond_11

    invoke-static {v13, v11, v7, v9}, Lcom/android/server/ResourceManager;->removeWhitelistEntryFromMac(Ljava/io/File;Ljava/lang/String;II)Z

    return v10

    :cond_11
    sget-boolean v1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v1, :cond_12

    sget-object v1, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "ResourceManager"

    const-string/jumbo v4, "load container setting is done"

    invoke-virtual {v1, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :cond_12
    nop

    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_13

    sget-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v1, "ResourceManager"

    const-string/jumbo v3, "leave addAppToWhitelist"

    invoke-virtual {v0, v1, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    const/4 v0, 0x0

    return v0

    :catch_1
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_2

    :cond_14
    move-object/from16 v2, p0

    move-object v13, v6

    :try_start_7
    sget-boolean v1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v1, :cond_15

    sget-object v1, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "ResourceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addAppToWhitelist, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " seInfo is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :cond_15
    return v10

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    move-object/from16 v2, p0

    move-object v13, v6

    :goto_2
    sget-boolean v1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v1, :cond_16

    sget-object v1, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "ResourceManager"

    const-string/jumbo v4, "leave addAppToWhitelist: Exception: Returning Policy Failed"

    invoke-virtual {v1, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    return v10

    :catch_4
    move-exception v0

    move-object/from16 v2, p0

    sget-object v3, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "ResourceManager"

    const-string v5, "Issue with whitelistDir directory"

    invoke-virtual {v3, v4, v5, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v10
.end method

.method public clearWhitelist(II)I
    .locals 7

    sget v0, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    const/4 v1, -0x1

    if-eq p2, v0, :cond_0

    sget v0, Lcom/android/server/ResourceManager;->APM_TYPE:I

    if-eq p2, v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    :try_start_0
    invoke-static {p1, p2}, Lcom/android/server/pm/SELinuxMMAC;->getWhitelist(II)Ljava/util/HashSet;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, p1, v5, p2}, Lcom/android/server/ResourceManager;->removeAppFromWhitelist(ILjava/lang/String;I)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v6

    if-eqz v0, :cond_1

    return v1

    :cond_1
    goto :goto_0

    :cond_2
    goto :goto_1

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "ResourceManager"

    const-string v4, "clearWhitelist exception"

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    const/4 v1, 0x0

    return v1
.end method

.method public getPackagesFromWhitelist(II)[Ljava/lang/String;
    .locals 2

    sget v0, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq p2, v0, :cond_0

    sget v0, Lcom/android/server/ResourceManager;->APM_TYPE:I

    if-eq p2, v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/pm/SELinuxMMAC;->getWhitelist(II)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ResourceManager;->hashset_to_str_array(Ljava/util/HashSet;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isWhitelistApp(ILjava/lang/String;I)I
    .locals 3

    const/4 v0, -0x1

    :try_start_0
    sget v1, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq p3, v1, :cond_0

    sget v1, Lcom/android/server/ResourceManager;->APM_TYPE:I

    if-eq p3, v1, :cond_0

    return v0

    :cond_0
    invoke-static {p1, p3}, Lcom/android/server/pm/SELinuxMMAC;->getWhitelist(II)Ljava/util/HashSet;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    nop

    return v0

    :catch_0
    move-exception v1

    return v0
.end method

.method public removeAppFromBlacklist(ILjava/lang/String;I)I
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ResourceManager;->removeAppFromBlacklistInternal(ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public removeAppFromWhitelist(ILjava/lang/String;I)I
    .locals 10

    const/4 v0, 0x0

    sget-boolean v1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "ResourceManager"

    const-string/jumbo v3, "enter removeAppFromWhitelist"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget v1, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    const/4 v2, -0x1

    if-eq p3, v1, :cond_1

    sget v1, Lcom/android/server/ResourceManager;->APM_TYPE:I

    if-eq p3, v1, :cond_1

    return v2

    :cond_1
    invoke-static {p2}, Lcom/android/server/ResourceManager;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    sget-object v1, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "ResourceManager"

    const-string v4, " removeAppFromWhitelist failed, no packageName found"

    invoke-virtual {v1, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_2
    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {p2, p1}, Lcom/android/server/ResourceManager;->getSignatureFromPackage(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v4

    if-nez v4, :cond_4

    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_3

    sget-object v5, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "ResourceManager"

    const-string/jumbo v7, "removeAppFromWhitelist, signature is null, package not installed yet"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x1

    :cond_4
    new-instance v5, Ljava/io/File;

    sget-object v6, Lcom/android/server/ResourceManager;->WHITELIST_MAC_PERM:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    sget-boolean v6, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v6, :cond_5

    sget-object v6, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "ResourceManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " removeAppFromWhitelist tempPackage = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    sget-boolean v6, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v6, :cond_6

    sget-object v6, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "ResourceManager"

    const-string/jumbo v8, "removeAppFromWhitelist ok!11"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-static {v5, p2, p1, p3}, Lcom/android/server/ResourceManager;->removeWhitelistEntryFromMac(Ljava/io/File;Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_7

    sget-object v6, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "ResourceManager"

    const-string/jumbo v8, "removeEntryFromMac failed"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_7
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, p2, p1, v7, v0}, Lcom/android/server/ResourceManager;->loadContainerSetting(Ljava/lang/String;ILjava/lang/String;Z)I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v7, v2, :cond_8

    return v2

    :cond_8
    nop

    sget-boolean v2, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v2, :cond_9

    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "ResourceManager"

    const-string/jumbo v8, "leave removeAppFromWhitelist"

    invoke-virtual {v2, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return v6

    :catch_0
    move-exception v6

    return v2
.end method
