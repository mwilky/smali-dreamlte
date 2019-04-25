.class public Lcom/samsung/android/knox/sdp/SdpUtil;
.super Ljava/lang/Object;
.source "SdpUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;,
        Lcom/samsung/android/knox/sdp/SdpUtil$EngineRemovedEvent;,
        Lcom/samsung/android/knox/sdp/SdpUtil$StateChangeEvent;,
        Lcom/samsung/android/knox/sdp/SdpUtil$SdpEvent;
    }
.end annotation


# static fields
.field private static final ANDROID_DEFAULT_ALIAS:Ljava/lang/String; = "android_"

.field private static final ANDROID_DEFAULT_ALIAS_MAX:Ljava/lang/String; = "android_999"

.field private static final ANDROID_DEFAULT_USER_ID_MAX:I = 0x3e7

.field private static final ANDROID_DEFAULT_USER_ID_MIN:I = 0x0

.field private static final SDK_CURRENT_VERSION:D = 1.1

.field private static final SDK_NOT_SUPPORTED:D = 0.0

.field private static final SDK_VERSION_1_0:D = 1.0

.field private static final SDK_VERSION_1_1:D = 1.1

.field public static final SERVICE_BUILD:Z = false

.field private static final TAG:Ljava/lang/String; = "SdpUtil"

.field private static mSdpUtil:Lcom/samsung/android/knox/sdp/SdpUtil; = null

.field private static final runAllConvert:Z = false


# instance fields
.field private mAlias:Ljava/lang/String;

.field private mBinderListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/knox/sdp/SdpUtil;->mSdpUtil:Lcom/samsung/android/knox/sdp/SdpUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/sdp/SdpUtil;->mBinderListeners:Ljava/util/ArrayList;

    return-void
.end method

.method private enforcePermission()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/knox/sdp/core/SdpException;
        }
    .end annotation

    const/16 v0, -0x63

    const-string/jumbo v1, "sdp"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/ISdpManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ISdpManagerService;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Landroid/os/ISdpManagerService;->isLicensed()I

    move-result v2

    move v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/samsung/android/knox/sdp/core/SdpException;

    const/16 v3, -0x9

    invoke-direct {v2, v3}, Lcom/samsung/android/knox/sdp/core/SdpException;-><init>(I)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    const-string v3, "SdpUtil"

    const-string v4, "Failed to talk with sdp service..."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static extractAndroidDefaultUserId(Ljava/lang/String;)I
    .locals 15

    const-string v0, "android_999"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, -0x1

    if-lt v0, v1, :cond_3

    const-string v0, "android_"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    const-string v0, "android_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "android_"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    const-string v1, "android_"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_2

    aget-char v6, v3, v5

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_1

    aget-char v6, v3, v5

    invoke-static {v6}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v6

    const-string v7, "SdpUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "num:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " index-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "android_"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v5, v7, :cond_0

    add-int/2addr v4, v6

    goto :goto_1

    :cond_0
    int-to-double v7, v4

    int-to-double v9, v6

    const-wide/high16 v11, 0x4024000000000000L    # 10.0

    sub-int v13, v0, v5

    add-int/lit8 v13, v13, -0x1

    int-to-double v13, v13

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    double-to-int v4, v7

    :goto_1
    nop

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    return v4

    :cond_3
    return v2
.end method

.method public static getAndroidDefaultAlias(I)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/samsung/android/knox/sdp/SdpUtil;->isAndroidDefaultUser(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getInstance()Lcom/samsung/android/knox/sdp/SdpUtil;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/sdp/SdpUtil;->mSdpUtil:Lcom/samsung/android/knox/sdp/SdpUtil;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/knox/sdp/SdpUtil;

    invoke-direct {v0}, Lcom/samsung/android/knox/sdp/SdpUtil;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/sdp/SdpUtil;->mSdpUtil:Lcom/samsung/android/knox/sdp/SdpUtil;

    :cond_0
    sget-object v0, Lcom/samsung/android/knox/sdp/SdpUtil;->mSdpUtil:Lcom/samsung/android/knox/sdp/SdpUtil;

    return-object v0
.end method

.method public static isAndroidDefaultAlias(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/knox/sdp/SdpUtil;->extractAndroidDefaultUserId(Ljava/lang/String;)I

    move-result v1

    const-string v2, "SdpUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "detecected userId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v1, :cond_1

    const/16 v2, 0x3e7

    if-gt v1, v2, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    return v0
.end method

.method public static isAndroidDefaultUser(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x3e7

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isKnoxWorkspace(I)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getEngineInfo(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/knox/sdp/core/SdpException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/knox/sdp/SdpUtil;->enforcePermission()V

    const/4 v0, 0x0

    const-string/jumbo v1, "sdp"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/ISdpManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ISdpManagerService;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1, p1}, Landroid/os/ISdpManagerService;->getEngineInfo(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v2

    move-object v0, v2

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v2, Lcom/samsung/android/knox/sdp/core/SdpException;

    const/4 v3, -0x5

    invoke-direct {v2, v3}, Lcom/samsung/android/knox/sdp/core/SdpException;-><init>(I)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    const-string v3, "SdpUtil"

    const-string v4, "getEngineInfo :: Failed to call getEngineInfo"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const-string v2, "SdpUtil"

    const-string v3, "getEngineInfo :: Failed to talk with sdp service..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/samsung/android/knox/sdp/core/SdpException;

    const/16 v3, -0xd

    invoke-direct {v2, v3}, Lcom/samsung/android/knox/sdp/core/SdpException;-><init>(I)V

    throw v2
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 2

    const-wide v0, 0x3ff199999999999aL    # 1.1

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedSDKVersion()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/knox/sdp/core/SdpException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    new-instance v2, Lcom/samsung/android/knox/sdp/core/SdpException;

    const/16 v3, -0xa

    invoke-direct {v2, v3}, Lcom/samsung/android/knox/sdp/core/SdpException;-><init>(I)V

    throw v2
.end method

.method public isSdpSupported()Z
    .locals 5

    const/4 v0, 0x0

    const-string/jumbo v1, "sdp"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/ISdpManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ISdpManagerService;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1}, Landroid/os/ISdpManagerService;->isSdpSupported()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "SdpUtil"

    const-string v4, "Failed to talk with sdp service..."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return v0
.end method

.method public registerListener(Ljava/lang/String;Lcom/samsung/android/knox/sdp/SdpStateListener;)Z
    .locals 5

    const-string/jumbo v0, "sdp"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ISdpManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ISdpManagerService;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    new-instance v2, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p2, v3}, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;-><init>(Lcom/samsung/android/knox/sdp/SdpUtil;Lcom/samsung/android/knox/sdp/SdpStateListener;Lcom/samsung/android/knox/sdp/SdpUtil$1;)V

    invoke-interface {v0, p1, v2}, Landroid/os/ISdpManagerService;->registerListener(Ljava/lang/String;Landroid/os/ISdpListener;)I

    move-result v3

    if-nez v3, :cond_1

    iget-object v4, p0, Lcom/samsung/android/knox/sdp/SdpUtil;->mBinderListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    return v1

    :cond_1
    return v1

    :catch_0
    move-exception v2

    const-string v3, "SdpUtil"

    const-string v4, "RemoteException from call registerListener"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public unregisterListener(Ljava/lang/String;Lcom/samsung/android/knox/sdp/SdpStateListener;)Z
    .locals 8

    const-string/jumbo v0, "sdp"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ISdpManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ISdpManagerService;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/knox/sdp/SdpUtil;->mBinderListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_3

    iget-object v4, p0, Lcom/samsung/android/knox/sdp/SdpUtil;->mBinderListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;

    invoke-static {v4}, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;->access$100(Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;)Lcom/samsung/android/knox/sdp/SdpStateListener;

    move-result-object v5

    if-ne v5, p2, :cond_2

    iget-object v5, p0, Lcom/samsung/android/knox/sdp/SdpUtil;->mBinderListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :try_start_0
    invoke-interface {v0, p1, v4}, Landroid/os/ISdpManagerService;->unregisterListener(Ljava/lang/String;Landroid/os/ISdpListener;)I

    move-result v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_1

    return v1

    :cond_1
    goto :goto_1

    :catch_0
    move-exception v5

    const-string v6, "SdpUtil"

    const-string v7, "RemoteException from call unregisterListener"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    return v1
.end method
