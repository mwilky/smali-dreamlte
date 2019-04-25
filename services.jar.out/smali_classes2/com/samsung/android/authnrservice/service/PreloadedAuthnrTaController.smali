.class final Lcom/samsung/android/authnrservice/service/PreloadedAuthnrTaController;
.super Ljava/lang/Object;
.source "PreloadedAuthnrTaController.java"

# interfaces
.implements Lcom/samsung/android/authnrservice/service/IPreloadedTaController;


# static fields
.field private static final TAG:Ljava/lang/String; = "PATC"

.field private static sIsNativeLoaded:Z

.field private static sIsPrepared:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-string/jumbo v0, "prldauthnrtactrl_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrTaController;->sIsNativeLoaded:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PATC"

    const-string v2, "NPE"

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "PATC"

    const-string v2, "ULE"

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v1, "PATC"

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

.method private native nativeInitialize()Z
.end method

.method private native nativeInitializeOperation()Z
.end method

.method private native nativeProcess(I[B)[B
.end method

.method private native nativeTerminate()Z
.end method

.method private native nativeTerminateOperation()Z
.end method


# virtual methods
.method public initialize()Z
    .locals 4

    const-string v0, "PATC"

    const-string v1, "initialize"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrTaController;->sIsNativeLoaded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "PATC"

    const-string/jumbo v2, "not loaded"

    invoke-static {v0, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    sget-boolean v0, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrTaController;->sIsPrepared:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const-string v0, "PATC"

    const-string v1, "already prepared"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrTaController;->nativeInitializeOperation()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v2, "PATC"

    const-string/jumbo v3, "nativeInitializeOperation failed"

    invoke-static {v2, v3}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrTaController;->nativeInitialize()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v2, "PATC"

    const-string/jumbo v3, "nativeInitialize failed"

    invoke-static {v2, v3}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_3
    sput-boolean v2, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrTaController;->sIsPrepared:Z

    return v2
.end method

.method public process([B)[B
    .locals 5

    const/4 v0, 0x3

    const-string v1, "PATC"

    const-string/jumbo v2, "process"

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v1, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrTaController;->sIsNativeLoaded:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "PATC"

    const-string/jumbo v3, "not loaded"

    invoke-static {v1, v3}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v2, [B

    return-object v1

    :cond_0
    sget-boolean v1, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrTaController;->sIsPrepared:Z

    if-nez v1, :cond_1

    const-string v1, "PATC"

    const-string/jumbo v3, "not prepared"

    invoke-static {v1, v3}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v2, [B

    return-object v1

    :cond_1
    const/4 v1, 0x3

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrTaController;->nativeProcess(I[B)[B

    move-result-object v1

    if-eqz v1, :cond_2

    array-length v3, v1

    if-nez v3, :cond_3

    :cond_2
    const-string v3, "PATC"

    const-string/jumbo v4, "processNative failed"

    invoke-static {v3, v4}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-nez v1, :cond_4

    new-array v2, v2, [B

    goto :goto_0

    :cond_4
    move-object v2, v1

    :goto_0
    return-object v2
.end method

.method public terminate()Z
    .locals 4

    const-string v0, "PATC"

    const-string/jumbo v1, "terminate"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrTaController;->sIsNativeLoaded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "PATC"

    const-string/jumbo v2, "not loaded"

    invoke-static {v0, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    sget-boolean v0, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrTaController;->sIsPrepared:Z

    if-nez v0, :cond_1

    const-string v0, "PATC"

    const-string/jumbo v2, "not prepared"

    invoke-static {v0, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrTaController;->nativeTerminate()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v2, "PATC"

    const-string/jumbo v3, "nativeTerminate failed"

    invoke-static {v2, v3}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrTaController;->nativeTerminateOperation()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v2, "PATC"

    const-string/jumbo v3, "nativeTerminateOperation failed"

    invoke-static {v2, v3}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_3
    sput-boolean v1, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrTaController;->sIsPrepared:Z

    const/4 v1, 0x1

    return v1
.end method
