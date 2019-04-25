.class public Lcom/android/server/enterprise/utils/PackageDownloader;
.super Ljava/lang/Object;
.source "PackageDownloader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PackageDownloader"

.field private static UNSPECIFIED:I

.field private static mPackageDownloader:Lcom/android/server/enterprise/utils/PackageDownloader;


# instance fields
.field private final DEBUG:Z

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog$Builder;

.field private mDownloadManager:Landroid/app/DownloadManager;

.field private mDownloadQueueIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mIsUserAcceptDataNetwork:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/android/server/enterprise/utils/PackageDownloader;->UNSPECIFIED:I

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/utils/PackageDownloader;->mPackageDownloader:Lcom/android/server/enterprise/utils/PackageDownloader;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDialog:Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mIsUserAcceptDataNetwork:Z

    iput-boolean v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->DEBUG:Z

    new-instance v0, Lcom/android/server/enterprise/utils/PackageDownloader$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/utils/PackageDownloader$1;-><init>(Lcom/android/server/enterprise/utils/PackageDownloader;)V

    iput-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.knox.intent.action.CHECK_REENROLLMENT_INTERNAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "edm.intent.action.sec.CHECK_REENROLLMENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/utils/PackageDownloader;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/utils/PackageDownloader;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/utils/PackageDownloader;->handleNetworkState()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/utils/PackageDownloader;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/utils/PackageDownloader;->handleDownloadProcess(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/utils/PackageDownloader;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/utils/PackageDownloader;->handleDownloadComplete()V

    return-void
.end method

.method private cancelAllDownload()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_3

    new-array v1, v0, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string v5, ""

    sget v6, Lcom/android/server/enterprise/utils/PackageDownloader;->UNSPECIFIED:I

    int-to-long v6, v6

    nop

    :goto_1
    if-ge v3, v0, :cond_2

    aget-object v5, v1, v3

    iget-object v8, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sget v8, Lcom/android/server/enterprise/utils/PackageDownloader;->UNSPECIFIED:I

    int-to-long v8, v8

    cmp-long v8, v6, v8

    if-eqz v8, :cond_1

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/utils/PackageDownloader;->postDownload(Ljava/lang/String;)V

    :cond_1
    iget-object v8, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    :cond_3
    return-void
.end method

.method private checkPackage(Ljava/lang/String;)Z
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadManager:Landroid/app/DownloadManager;

    new-instance v7, Landroid/app/DownloadManager$Query;

    invoke-direct {v7}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v8, 0x1

    new-array v9, v8, [J

    const/4 v10, 0x0

    aput-wide v4, v9, v10

    invoke-virtual {v7, v9}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "status"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    move v2, v7

    const-string/jumbo v7, "local_uri"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    new-instance v9, Ljava/io/File;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v11

    goto :goto_0

    :catchall_0
    move-exception v7

    goto/16 :goto_7

    :catch_0
    move-exception v7

    goto/16 :goto_5

    :cond_0
    :goto_0
    if-nez v3, :cond_2

    nop

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return v0

    :cond_2
    :try_start_1
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    iget-object v11, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v10}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    move-object v9, v10

    :cond_3
    if-eqz v9, :cond_4

    iget-object v10, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v10, :cond_4

    iget-object v10, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object v1, v10

    :cond_4
    if-nez v1, :cond_5

    const/4 v0, 0x0

    iget-object v8, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    const v10, 0x10408e2

    invoke-virtual {v8, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/RestrictionToastManager;->show(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    iget-object v10, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/server/enterprise/utils/ConstrainedState;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/ConstrainedState;

    move-result-object v10

    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v10, p1, v11}, Lcom/android/server/enterprise/utils/ConstrainedState;->checkSignature(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v8, :cond_7

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    iget-object v8, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v8, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    if-ne v2, v12, :cond_9

    if-eqz v3, :cond_9

    :try_start_2
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/utils/PackageDownloader;->installPackage(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x1

    :goto_1
    goto :goto_3

    :catch_1
    move-exception v8

    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_1

    :cond_7
    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v10, p1, v11}, Lcom/android/server/enterprise/utils/ConstrainedState;->checkSignatureTarget(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v11

    if-ne v11, v8, :cond_8

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v8, :cond_9

    if-ne v2, v12, :cond_9

    if-eqz v3, :cond_9

    :try_start_4
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/utils/PackageDownloader;->installPackage(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v0, 0x1

    :goto_2
    goto :goto_3

    :catch_2
    move-exception v8

    :try_start_5
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v0, 0x0

    goto :goto_2

    :cond_8
    const/4 v0, 0x0

    :cond_9
    :goto_3
    if-eqz v6, :cond_a

    :goto_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :goto_5
    nop

    :try_start_6
    const-string v8, "PackageDownloader"

    const-string/jumbo v9, "failed to checkPackage"

    invoke-static {v8, v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v6, :cond_a

    goto :goto_4

    :cond_a
    :goto_6
    if-nez v0, :cond_b

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/utils/PackageDownloader;->postDownload(Ljava/lang/String;)V

    :cond_b
    return v0

    :goto_7
    if-eqz v6, :cond_c

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v7
.end method

.method private download(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/utils/PackageDownloader;->getDownloadManager(Landroid/content/Context;)Landroid/app/DownloadManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadManager:Landroid/app/DownloadManager;

    iget-object v1, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadManager:Landroid/app/DownloadManager;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget v3, Lcom/android/server/enterprise/utils/PackageDownloader;->UNSPECIFIED:I

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    new-instance v1, Landroid/app/DownloadManager$Request;

    invoke-direct {v1, v0}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v1}, Landroid/app/DownloadManager$Request;->setDestinationToSystemCache()Landroid/app/DownloadManager$Request;

    iget-object v2, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v2, v1}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private getDownloadManager(Landroid/content/Context;)Landroid/app/DownloadManager;
    .locals 1

    const-string/jumbo v0, "download"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/PackageDownloader;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/utils/PackageDownloader;->mPackageDownloader:Lcom/android/server/enterprise/utils/PackageDownloader;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/enterprise/utils/PackageDownloader;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/utils/PackageDownloader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/utils/PackageDownloader;->mPackageDownloader:Lcom/android/server/enterprise/utils/PackageDownloader;

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/utils/PackageDownloader;->mPackageDownloader:Lcom/android/server/enterprise/utils/PackageDownloader;

    return-object v0
.end method

.method private handleDownloadComplete()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    new-array v1, v0, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string v5, ""

    sget v6, Lcom/android/server/enterprise/utils/PackageDownloader;->UNSPECIFIED:I

    int-to-long v6, v6

    nop

    :goto_1
    if-ge v3, v0, :cond_2

    aget-object v5, v1, v3

    iget-object v8, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sget v8, Lcom/android/server/enterprise/utils/PackageDownloader;->UNSPECIFIED:I

    int-to-long v8, v8

    cmp-long v8, v6, v8

    if-eqz v8, :cond_1

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/utils/PackageDownloader;->checkPackage(Ljava/lang/String;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private handleDownloadProcess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/server/enterprise/utils/PackageDownloader;->isNetworkConnectionAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    sget v1, Lcom/android/server/enterprise/utils/PackageDownloader;->UNSPECIFIED:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/utils/PackageDownloader;->download(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private handleNetworkState()V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/enterprise/utils/PackageDownloader;->isNetworkConnectionAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    const v1, 0x10408e1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/utils/PackageDownloader;->cancelAllDownload()V

    :cond_1
    return-void
.end method

.method private installPackage(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private isApplicationInstalled(Ljava/lang/String;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    return v1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private isConnectionAvailable(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/net/ConnectivityManager;

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    :cond_1
    return v0
.end method

.method private isNetworkConnectionAvailable()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/utils/PackageDownloader;->isConnectionAvailable(I)Z

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/utils/PackageDownloader;->isConnectionAvailable(I)Z

    move-result v4

    if-nez v2, :cond_1

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    nop

    :cond_1
    :goto_0
    move v0, v1

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    const v3, 0x10408e3

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_2
    return v0
.end method

.method private postDownload(Ljava/lang/String;)V
    .locals 5

    sget v0, Lcom/android/server/enterprise/utils/PackageDownloader;->UNSPECIFIED:I

    int-to-long v0, v0

    iget-object v2, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    if-eqz p1, :cond_0

    sget v2, Lcom/android/server/enterprise/utils/PackageDownloader;->UNSPECIFIED:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/utils/PackageDownloader;->getDownloadManager(Landroid/content/Context;)Landroid/app/DownloadManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadManager:Landroid/app/DownloadManager;

    iget-object v2, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadManager:Landroid/app/DownloadManager;

    const/4 v3, 0x1

    new-array v3, v3, [J

    const/4 v4, 0x0

    aput-wide v0, v3, v4

    invoke-virtual {v2, v3}, Landroid/app/DownloadManager;->remove([J)I

    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v2, "PackageDownloader"

    const-string/jumbo v3, "something\'s wrong...size is 0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method
