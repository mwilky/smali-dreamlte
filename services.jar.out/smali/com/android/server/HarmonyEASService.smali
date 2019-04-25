.class public Lcom/android/server/HarmonyEASService;
.super Landroid/content/IHarmonyEAS$Stub;
.source "HarmonyEASService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/HarmonyEASService$PackageHandler;,
        Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;
    }
.end annotation


# static fields
.field public static final HARMONY_EAS_SERVICE:Ljava/lang/String; = "harmony_eas_service"

.field private static final HARMONY_THIRDPARTY_APP_FILES:Ljava/lang/String; = "harmony_third_party_apps.xml"

.field private static final HARMONY_THIRDPARTY_APP_FILE_PATH:Ljava/lang/String; = "/data/system/harmony_third_party_apps.xml"

.field private static final SYSTEM_SECURE_DIR:Ljava/lang/String; = "/data/system/"

.field private static final TAG:Ljava/lang/String; = "HarmonyEASService"


# instance fields
.field final mContext:Landroid/content/Context;

.field private mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mPackageHandler:Landroid/os/Handler;

.field mUserMgr:Landroid/os/UserManager;

.field private final mUserToAppMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    invoke-direct {p0}, Landroid/content/IHarmonyEAS$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/HarmonyEASService;->mUserMgr:Landroid/os/UserManager;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/HarmonyEASService;->mUserToAppMap:Landroid/util/SparseArray;

    iput-object v0, p0, Lcom/android/server/HarmonyEASService;->mPackageHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/HarmonyEASService$1;

    invoke-direct {v0, p0}, Lcom/android/server/HarmonyEASService$1;-><init>(Lcom/android/server/HarmonyEASService;)V

    iput-object v0, p0, Lcom/android/server/HarmonyEASService;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/HarmonyEASService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/HarmonyEASService$PackageHandler;

    invoke-direct {v0, p0}, Lcom/android/server/HarmonyEASService$PackageHandler;-><init>(Lcom/android/server/HarmonyEASService;)V

    iput-object v0, p0, Lcom/android/server/HarmonyEASService;->mPackageHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/HarmonyEASService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/HarmonyEASService;->mUserMgr:Landroid/os/UserManager;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/HarmonyEASService;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v0, v1

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/HarmonyEASService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/HarmonyEASService;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    move-object v5, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/HarmonyEASService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/HarmonyEASService;->saveHash(I)V

    return-void
.end method

.method private declared-synchronized addHashForPackage(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p3}, Lcom/android/server/HarmonyEASService;->getAppDetailsOfUserId(I)Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mThirdPartyPackageMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mHashValueToPkgNameMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/HarmonyEASService;->mPackageHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/HarmonyEASService;->mPackageHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized addPackageAsUnknown(Ljava/lang/String;I)V
    .locals 7

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/HarmonyEASService;->getAppDetailsOfUserId(I)Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    move-result-object v1

    iget-object v2, v1, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mUnknownPackageSet:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v1, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mThirdPartyPackageMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/server/HarmonyEASService;->mPackageHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/HarmonyEASService;->mPackageHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p2, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private getAppDetailsOfUserId(I)Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/HarmonyEASService;->mUserToAppMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    if-nez v0, :cond_0

    new-instance v1, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;-><init>(Lcom/android/server/HarmonyEASService$1;)V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/HarmonyEASService;->mUserToAppMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    iget-object v1, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mThirdPartyPackageMap:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mThirdPartyPackageMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0, p1}, Lcom/android/server/HarmonyEASService;->loadHashVaues(Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;I)V

    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private loadHashVaues(Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;I)V
    .locals 16

    move-object/from16 v1, p1

    const/4 v2, 0x0

    invoke-static/range {p2 .. p2}, Lcom/android/server/HarmonyEASService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mThirdPartyPackageMap:Ljava/util/HashMap;

    iget-object v5, v1, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mHashValueToPkgNameMap:Ljava/util/HashMap;

    iget-object v0, v1, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mUnknownPackageSet:Ljava/util/HashSet;

    move-object v6, v0

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {v3}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v0

    nop

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    move-object v7, v0

    const/4 v0, 0x0

    invoke-interface {v7, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :goto_0
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    move v9, v8

    const/4 v10, 0x1

    if-eq v8, v10, :cond_0

    const/4 v8, 0x2

    if-eq v9, v8, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string/jumbo v13, "third-party-apps"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    move v9, v13

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    :goto_1
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v14

    move v9, v14

    if-eq v14, v10, :cond_5

    const/4 v14, 0x3

    if-ne v9, v14, :cond_1

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    if-le v10, v13, :cond_5

    :cond_1
    if-eq v9, v14, :cond_4

    const/4 v10, 0x4

    if-ne v9, v10, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    const-string/jumbo v10, "hash"

    invoke-interface {v7, v0, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v11, v10

    const-string/jumbo v10, "isUnsigned"

    invoke-interface {v7, v0, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    move v12, v10

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v4, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v12, :cond_3

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v7}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_4
    :goto_2
    const/4 v10, 0x1

    goto :goto_1

    :cond_5
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :cond_6
    :goto_3
    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_7
    :try_start_6
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "harmony eas settings do not start with proper tag: found "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    move-object v7, v2

    move-object v2, v0

    goto :goto_5

    :catch_1
    move-exception v0

    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v2, :cond_6

    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_3

    :goto_4
    return-void

    :goto_5
    nop

    if-eqz v7, :cond_8

    :try_start_9
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    nop

    :cond_8
    :goto_6
    throw v2
.end method

.method private static makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;
    .locals 6

    if-nez p0, :cond_0

    const-string v0, "/data/system/harmony_third_party_apps.xml"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "harmony_third_party_apps.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/android/internal/util/JournaledFile;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object v1
.end method

.method private saveHash(I)V
    .locals 14

    invoke-direct {p0, p1}, Lcom/android/server/HarmonyEASService;->getAppDetailsOfUserId(I)Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mThirdPartyPackageMap:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mUnknownPackageSet:Ljava/util/HashSet;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/android/server/HarmonyEASService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v5

    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-virtual {v5}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object v3, v6

    new-instance v6, Ljava/io/BufferedOutputStream;

    invoke-direct {v6, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v4, v6

    new-instance v6, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v6}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    const-string/jumbo v7, "utf-8"

    invoke-interface {v6, v4, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v6, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v9, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v6, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v7, "third-party-apps"

    invoke-interface {v6, v10, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v11, 0x0

    nop

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object v9, v12

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object v11, v12

    invoke-virtual {v2, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    move v8, v12

    invoke-interface {v6, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v12, "hash"

    invoke-interface {v6, v10, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v12, "isUnsigned"

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v6, v10, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v6, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    :cond_0
    const-string/jumbo v12, "third-party-apps"

    invoke-interface {v6, v10, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-static {v3}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    invoke-virtual {v5}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    goto :goto_1

    :catch_0
    move-exception v6

    goto :goto_2

    :goto_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :goto_2
    goto :goto_4

    :cond_1
    :goto_3
    goto :goto_4

    :catchall_0
    move-exception v6

    goto :goto_5

    :catch_1
    move-exception v6

    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v5}, Lcom/android/internal/util/JournaledFile;->rollback()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_2

    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    :cond_2
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :goto_4
    return-void

    :goto_5
    nop

    if-eqz v4, :cond_3

    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    goto :goto_6

    :catch_2
    move-exception v7

    goto :goto_7

    :cond_3
    :goto_6
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_4
    :goto_7
    throw v6
.end method


# virtual methods
.method clearDataForUser(I)V
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "harmony_third_party_apps.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v1, p0, Lcom/android/server/HarmonyEASService;->mUserToAppMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/HarmonyEASService;->mUserToAppMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_1
    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getHashValueFromPackageName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    invoke-direct {p0, p2}, Lcom/android/server/HarmonyEASService;->getAppDetailsOfUserId(I)Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mThirdPartyPackageMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    if-eqz v1, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    const-string v2, ""

    :goto_1
    return-object v2
.end method

.method public getPackageNameFromHash(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    invoke-direct {p0, p2}, Lcom/android/server/HarmonyEASService;->getAppDetailsOfUserId(I)Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mHashValueToPkgNameMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    if-eqz v1, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    const-string v2, ""

    :goto_1
    return-object v2
.end method

.method public getThirdPartyApps(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/HarmonyEASService;->getAppDetailsOfUserId(I)Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mThirdPartyPackageMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public getUnknownSourcesPackages(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/HarmonyEASService;->getAppDetailsOfUserId(I)Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mUnknownPackageSet:Ljava/util/HashSet;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method handlePackagesChanged(I)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/HarmonyEASService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/HarmonyEASService;->getAppDetailsOfUserId(I)Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mThirdPartyPackageMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_0

    const/4 v1, 0x1

    const/4 v0, 0x1

    :cond_0
    goto :goto_1

    :catch_0
    move-exception v5

    const/4 v1, 0x1

    const/4 v0, 0x1

    :goto_1
    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {p0, v4, p1}, Lcom/android/server/HarmonyEASService;->removeInstallationPackageExtras(Ljava/lang/String;I)V

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    :cond_1
    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/android/server/HarmonyEASService;->mPackageHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/HarmonyEASService;->mPackageHandler:Landroid/os/Handler;

    const/4 v7, 0x1

    invoke-virtual {v6, v7, p1, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method declared-synchronized handleUserChanged(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/HarmonyEASService;->mUserToAppMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/HarmonyEASService;->mUserToAppMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isPackageUnknownSource(Ljava/lang/String;I)Z
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p2}, Lcom/android/server/HarmonyEASService;->getAppDetailsOfUserId(I)Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    move-result-object v1

    iget-object v2, v1, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mUnknownPackageSet:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public removeInstallationPackage(Ljava/lang/String;I)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/HarmonyEASService;->mUserMgr:Landroid/os/UserManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/HarmonyEASService;->mUserMgr:Landroid/os/UserManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p1, v3}, Lcom/android/server/HarmonyEASService;->removeInstallationPackageExtras(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/HarmonyEASService;->removeInstallationPackageExtras(Ljava/lang/String;I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public removeInstallationPackageExtras(Ljava/lang/String;I)V
    .locals 8

    invoke-direct {p0, p2}, Lcom/android/server/HarmonyEASService;->getAppDetailsOfUserId(I)Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mThirdPartyPackageMap:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mHashValueToPkgNameMap:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mUnknownPackageSet:Ljava/util/HashSet;

    monitor-enter p0

    :try_start_0
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, p0, Lcom/android/server/HarmonyEASService;->mPackageHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/HarmonyEASService;->mPackageHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p2, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public setInstallationPackageHashValue(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    if-eq v0, p3, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v2, p4, :cond_1

    iget-object v2, p0, Lcom/android/server/HarmonyEASService;->mUserMgr:Landroid/os/UserManager;

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/server/HarmonyEASService;->mUserMgr:Landroid/os/UserManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljava/util/ArrayList;

    :cond_1
    if-eqz v0, :cond_2

    const-string v2, "HarmonyEASService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating for all "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/HarmonyEASService;->addHashForPackage(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/HarmonyEASService;->addHashForPackage(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_3
    return-void
.end method

.method public setInstallationPackageUnknown(Ljava/lang/String;II)V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    if-eq v0, p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v2, p3, :cond_1

    iget-object v2, p0, Lcom/android/server/HarmonyEASService;->mUserMgr:Landroid/os/UserManager;

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/server/HarmonyEASService;->mUserMgr:Landroid/os/UserManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljava/util/ArrayList;

    :cond_1
    if-eqz v0, :cond_2

    const-string v2, "HarmonyEASService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating for all "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, p1, v4}, Lcom/android/server/HarmonyEASService;->addPackageAsUnknown(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p3}, Lcom/android/server/HarmonyEASService;->addPackageAsUnknown(Ljava/lang/String;I)V

    :cond_3
    return-void
.end method
