.class Lcom/android/server/fingerprint/FingerprintsUserState;
.super Ljava/lang/Object;
.source "FingerprintsUserState.java"


# static fields
.field private static final ATTR_DEVICE_ID:Ljava/lang/String; = "deviceId"

.field private static final ATTR_EXT_DUPLICATED_CNT:Ljava/lang/String; = "duplicatedCount"

.field private static final ATTR_FINGER_ID:Ljava/lang/String; = "fingerId"

.field private static final ATTR_GROUP_ID:Ljava/lang/String; = "groupId"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final FINGERPRINT_EXT_BIGDATA_FILE:Ljava/lang/String; = "settings_fingerprint_ext_bigdata.xml"

.field private static final FINGERPRINT_EXT_FILE:Ljava/lang/String; = "settings_fingerprint_ext.xml"

.field private static final FINGERPRINT_FILE:Ljava/lang/String; = "settings_fingerprint.xml"

.field private static final TAG:Ljava/lang/String; = "FingerprintState"

.field private static final TAG_FINGERPRINT:Ljava/lang/String; = "fingerprint"

.field private static final TAG_FINGERPRINTS:Ljava/lang/String; = "fingerprints"


# instance fields
.field private final mCtx:Landroid/content/Context;

.field private final mFile:Ljava/io/File;

.field private final mFingerprints:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAdaptiveIconEnabled:Z

.field private mSemBigDataCounts:Ljava/lang/String;

.field private mSemFileExt:Ljava/io/File;

.field private mSemFileExtBigData:Ljava/io/File;

.field private mSemTouchCount:I

.field private final mSemWriteSateBigDataRunnable:Ljava/lang/Runnable;

.field private final mSemWriteSateRunnable:Ljava/lang/Runnable;

.field private final mWriteStateRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFingerprints:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/fingerprint/FingerprintsUserState$2;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintsUserState$2;-><init>(Lcom/android/server/fingerprint/FingerprintsUserState;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mWriteStateRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/fingerprint/FingerprintsUserState$3;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintsUserState$3;-><init>(Lcom/android/server/fingerprint/FingerprintsUserState;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mSemWriteSateRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/fingerprint/FingerprintsUserState$4;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintsUserState$4;-><init>(Lcom/android/server/fingerprint/FingerprintsUserState;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mSemWriteSateBigDataRunnable:Ljava/lang/Runnable;

    invoke-static {p2}, Lcom/android/server/fingerprint/FingerprintsUserState;->getFileForUser(I)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFile:Ljava/io/File;

    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mCtx:Landroid/content/Context;

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintsUserState;->readStateSyncLocked()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "settings_fingerprint_ext.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mSemFileExt:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "settings_fingerprint_ext_bigdata.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mSemFileExtBigData:Ljava/io/File;

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintsUserState;->semReadStateSyncLocked()V

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintsUserState;->semBigDataReadStateSyncLocked()V

    :cond_0
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_2

    :try_start_1
    new-instance v0, Lcom/android/server/fingerprint/FingerprintsUserState$1;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lcom/android/server/fingerprint/FingerprintsUserState$1;-><init>(Lcom/android/server/fingerprint/FingerprintsUserState;Landroid/os/Handler;I)V

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "fingerprint_adaptive_icon"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "fingerprint_adaptive_icon"

    invoke-static {v1, v2, v3, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mIsAdaptiveIconEnabled:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "FingerprintState"

    const-string v2, "FingerprintsUserState : constructor : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method static synthetic access$000(Lcom/android/server/fingerprint/FingerprintsUserState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mIsAdaptiveIconEnabled:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/fingerprint/FingerprintsUserState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mIsAdaptiveIconEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/fingerprint/FingerprintsUserState;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mCtx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/fingerprint/FingerprintsUserState;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintsUserState;->doWriteState()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/fingerprint/FingerprintsUserState;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintsUserState;->semDoWriteState()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/fingerprint/FingerprintsUserState;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintsUserState;->semDoWriteStateBigData()V

    return-void
.end method

.method private doWriteState()V
    .locals 11

    new-instance v0, Landroid/util/AtomicFile;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFile:Ljava/io/File;

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFingerprints:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/server/fingerprint/FingerprintsUserState;->getCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    move-object v3, v2

    :try_start_1
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4

    move-object v3, v4

    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v4

    const-string/jumbo v5, "utf-8"

    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string/jumbo v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v5, "fingerprints"

    invoke-interface {v4, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/fingerprint/Fingerprint;

    const-string/jumbo v8, "fingerprint"

    invoke-interface {v4, v2, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "fingerId"

    invoke-virtual {v7}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v2, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "name"

    invoke-virtual {v7}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v2, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "groupId"

    invoke-virtual {v7}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v2, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v8, "deviceId"

    invoke-virtual {v7}, Landroid/hardware/fingerprint/Fingerprint;->getDeviceId()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v2, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "duplicatedCount"

    invoke-virtual {v7}, Landroid/hardware/fingerprint/Fingerprint;->semGetDuplicatedImageCount()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v2, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "fingerprint"

    invoke-interface {v4, v2, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v6, "fingerprints"

    invoke-interface {v4, v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    nop

    return-void

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    const-string v4, "FingerprintState"

    const-string v5, "Failed to write settings, restoring backup"

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Failed to write fingerprints"

    invoke-direct {v4, v5, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private getCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/Fingerprint;

    new-instance v10, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v5

    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v6

    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getDeviceId()J

    move-result-wide v7

    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->semGetDuplicatedImageCount()I

    move-result v9

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJI)V

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static getFileForUser(I)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "settings_fingerprint.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getUniqueName()Ljava/lang/String;
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mCtx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.android.settings"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v3, "fingerprint_list_item"

    const-string/jumbo v4, "string"

    const-string v5, "com.android.settings"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    :cond_0
    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_1

    iget-object v5, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mCtx:Landroid/content/Context;

    const v6, 0x104036a

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v3

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-direct {p0, v3}, Lcom/android/server/fingerprint/FingerprintsUserState;->isUnique(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "FingerprintService"

    const-string/jumbo v4, "getUniqueName : exception : "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_1
    move-exception v2

    const-string v3, "FingerprintService"

    const-string/jumbo v4, "getUniqueName : NameNotFoundException"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_2
    const-string v2, "Fingerprint"

    return-object v2
.end method

.method private isUnique(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFingerprints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private parseFingerprintsLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 20
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v1, p1

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    :goto_0
    move v2, v0

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v3, v0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_5

    const/4 v0, 0x3

    if-ne v3, v0, :cond_0

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v2, :cond_5

    :cond_0
    if-eq v3, v0, :cond_4

    const/4 v0, 0x4

    if-ne v3, v0, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v0, "fingerprint"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "name"

    const/4 v5, 0x0

    invoke-interface {v1, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v0, "groupId"

    invoke-interface {v1, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v0, "fingerId"

    invoke-interface {v1, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v0, "deviceId"

    invoke-interface {v1, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/4 v0, -0x1

    move v6, v0

    :try_start_0
    const-string/jumbo v0, "duplicatedCount"

    invoke-interface {v1, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v5

    move v6, v0

    :cond_2
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v5, "FingerprintState"

    const-string/jumbo v7, "parseFingerprintsLocked : failed"

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    move v0, v6

    move-object/from16 v5, p0

    iget-object v10, v5, Lcom/android/server/fingerprint/FingerprintsUserState;->mFingerprints:Ljava/util/ArrayList;

    new-instance v11, Landroid/hardware/fingerprint/Fingerprint;

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    int-to-long v6, v0

    move-wide/from16 v16, v6

    move-object v6, v11

    move-object v7, v12

    move/from16 v18, v0

    move-object v0, v10

    move-object v1, v11

    move-wide/from16 v10, v16

    invoke-direct/range {v6 .. v11}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    move-object/from16 v5, p0

    :goto_2
    goto :goto_4

    :cond_4
    :goto_3
    move-object/from16 v5, p0

    :goto_4
    move v0, v2

    move-object/from16 v1, p1

    goto/16 :goto_0

    :cond_5
    move-object/from16 v5, p0

    return-void
.end method

.method private parseStateLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_4

    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "fingerprints"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintsUserState;->parseFingerprintsLocked(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_3
    goto :goto_0

    :cond_4
    return-void
.end method

.method private readStateSyncLocked()V
    .locals 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    nop

    nop

    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/server/fingerprint/FingerprintsUserState;->parseStateLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    nop

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed parsing settings file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1

    :catch_1
    move-exception v0

    const-string v1, "FingerprintState"

    const-string v2, "No fingerprint state"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private scheduleWriteStateLocked()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mWriteStateRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private semBigDataReadStateSyncLocked()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mSemFileExtBigData:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mSemFileExtBigData:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    nop

    nop

    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v1

    new-array v2, v1, [B

    invoke-virtual {v0, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_1

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v3, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mSemBigDataCounts:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mSemBigDataCounts:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "FingerprintState"

    const-string/jumbo v3, "semReadStateSyncLocked"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    nop

    return-void

    :goto_1
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1

    :catch_1
    move-exception v0

    const-string v1, "FingerprintState"

    const-string v2, "No fingerprint state"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private semBigDataScheduleWriteStateLocked()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mSemWriteSateBigDataRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private semDoWriteState()V
    .locals 5

    new-instance v0, Landroid/util/AtomicFile;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mSemFileExt:Ljava/io/File;

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v1, v2

    iget v2, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mSemTouchCount:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "FingerprintState"

    const-string v4, "Failed to write settings, restoring backup"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    nop

    return-void

    :goto_1
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method private semDoWriteStateBigData()V
    .locals 5

    new-instance v0, Landroid/util/AtomicFile;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mSemFileExtBigData:Ljava/io/File;

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v1, v2

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mSemBigDataCounts:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "FingerprintState"

    const-string v4, "Failed to write settings, restoring backup"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method private semReadStateSyncLocked()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mSemFileExt:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mSemFileExt:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    nop

    nop

    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v1

    new-array v2, v1, [B

    invoke-virtual {v0, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_1

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mSemTouchCount:I

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mSemTouchCount:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "FingerprintState"

    const-string/jumbo v3, "semReadStateSyncLocked"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    nop

    return-void

    :goto_1
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1

    :catch_1
    move-exception v0

    const-string v1, "FingerprintState"

    const-string v2, "No fingerprint state"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private semScheduleWriteStateLocked()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mSemWriteSateRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public addFingerprint(II)V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFingerprints:Ljava/util/ArrayList;

    new-instance v7, Landroid/hardware/fingerprint/Fingerprint;

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintsUserState;->getUniqueName()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v5, 0x0

    move-object v1, v7

    move v3, p2

    move v4, p1

    invoke-direct/range {v1 .. v6}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintsUserState;->scheduleWriteStateLocked()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getFingerprints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFingerprints:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintsUserState;->getCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeFingerprint(I)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFingerprints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFingerprints:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFingerprints:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintsUserState;->scheduleWriteStateLocked()V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public renameFingerprint(ILjava/lang/CharSequence;)V
    .locals 11

    monitor-enter p0

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFingerprints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFingerprints:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFingerprints:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/Fingerprint;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFingerprints:Ljava/util/ArrayList;

    new-instance v10, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v5

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v6

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getDeviceId()J

    move-result-wide v7

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->semGetDuplicatedImageCount()I

    move-result v9

    move-object v3, v10

    move-object v4, p2

    invoke-direct/range {v3 .. v9}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJI)V

    invoke-virtual {v2, v0, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintsUserState;->scheduleWriteStateLocked()V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public semAddFingerprint(IILjava/lang/CharSequence;I)V
    .locals 10

    monitor-enter p0

    move-object v0, p3

    if-nez v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintsUserState;->getUniqueName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFingerprints:Ljava/util/ArrayList;

    new-instance v9, Landroid/hardware/fingerprint/Fingerprint;

    const-wide/16 v5, 0x0

    move-object v1, v9

    move-object v2, v0

    move v3, p2

    move v4, p1

    move v7, p4

    invoke-direct/range {v1 .. v7}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJI)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintsUserState;->scheduleWriteStateLocked()V

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public semGetBigDataCounts()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mSemBigDataCounts:Ljava/lang/String;

    return-object v0
.end method

.method public semGetTouchCount()I
    .locals 1

    iget v0, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mSemTouchCount:I

    return v0
.end method

.method public semIsAdaptiveIconEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mIsAdaptiveIconEnabled:Z

    return v0
.end method

.method public semSaveBigDataCounts(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mSemBigDataCounts:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintsUserState;->semBigDataScheduleWriteStateLocked()V

    return-void
.end method

.method public semSaveTouchCount(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mSemTouchCount:I

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintsUserState;->semScheduleWriteStateLocked()V

    return-void
.end method
