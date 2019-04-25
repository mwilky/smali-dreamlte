.class final Lcom/samsung/android/authnrservice/service/AuthnrTaController;
.super Ljava/lang/Object;
.source "AuthnrTaController.java"

# interfaces
.implements Lcom/samsung/android/authnrservice/service/ITaController;


# static fields
.field private static final TAG:Ljava/lang/String; = "ATC"

.field private static sIsNativeLoaded:Z

.field private static sIsPrepared:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-string v0, "authnrtactrl_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/authnrservice/service/AuthnrTaController;->sIsNativeLoaded:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ATC"

    const-string v2, "NPE"

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "ATC"

    const-string v2, "ULE"

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v1, "ATC"

    const-string v2, "SE"

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    nop

    :goto_1
    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native nativeInitialize(IJJ)Z
.end method

.method private native nativeInitializeOperation()Z
.end method

.method private native nativeProcess([B)[B
.end method

.method private native nativeTerminate()Z
.end method

.method private native nativeTerminateOperation()Z
.end method


# virtual methods
.method public initialize(IJJ)Z
    .locals 4

    const-string v0, "ATC"

    const-string v1, "initialize"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/authnrservice/service/AuthnrTaController;->sIsNativeLoaded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "ATC"

    const-string/jumbo v2, "not loaded"

    invoke-static {v0, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    sget-boolean v0, Lcom/samsung/android/authnrservice/service/AuthnrTaController;->sIsPrepared:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const-string v0, "ATC"

    const-string v1, "already prepared"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/authnrservice/service/AuthnrTaController;->nativeInitializeOperation()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v2, "ATC"

    const-string/jumbo v3, "nativeInitializeOperation failed"

    invoke-static {v2, v3}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/authnrservice/service/AuthnrTaController;->nativeInitialize(IJJ)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v2, "ATC"

    const-string/jumbo v3, "nativeInitialize failed"

    invoke-static {v2, v3}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_3
    sput-boolean v2, Lcom/samsung/android/authnrservice/service/AuthnrTaController;->sIsPrepared:Z

    return v2
.end method

.method public process([B)[B
    .locals 4

    const-string v0, "ATC"

    const-string/jumbo v1, "process"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/authnrservice/service/AuthnrTaController;->sIsNativeLoaded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "ATC"

    const-string/jumbo v2, "not loaded"

    invoke-static {v0, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v1, [B

    return-object v0

    :cond_0
    sget-boolean v0, Lcom/samsung/android/authnrservice/service/AuthnrTaController;->sIsPrepared:Z

    if-nez v0, :cond_1

    const-string v0, "ATC"

    const-string/jumbo v2, "not prepared"

    invoke-static {v0, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v1, [B

    return-object v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/authnrservice/service/AuthnrTaController;->nativeProcess([B)[B

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v2, v0

    if-nez v2, :cond_3

    :cond_2
    const-string v2, "ATC"

    const-string/jumbo v3, "processNative failed"

    invoke-static {v2, v3}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-nez v0, :cond_4

    new-array v1, v1, [B

    goto :goto_0

    :cond_4
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public terminate()Z
    .locals 4

    const-string v0, "ATC"

    const-string/jumbo v1, "terminate"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/authnrservice/service/AuthnrTaController;->sIsNativeLoaded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "ATC"

    const-string/jumbo v2, "not loaded"

    invoke-static {v0, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    sget-boolean v0, Lcom/samsung/android/authnrservice/service/AuthnrTaController;->sIsPrepared:Z

    if-nez v0, :cond_1

    const-string v0, "ATC"

    const-string/jumbo v2, "not prepared"

    invoke-static {v0, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/authnrservice/service/AuthnrTaController;->nativeTerminate()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v2, "ATC"

    const-string/jumbo v3, "nativeTerminate failed"

    invoke-static {v2, v3}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/authnrservice/service/AuthnrTaController;->nativeTerminateOperation()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v2, "ATC"

    const-string/jumbo v3, "nativeTerminateOperation failed"

    invoke-static {v2, v3}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_3
    sput-boolean v1, Lcom/samsung/android/authnrservice/service/AuthnrTaController;->sIsPrepared:Z

    const/4 v1, 0x1

    return v1
.end method
