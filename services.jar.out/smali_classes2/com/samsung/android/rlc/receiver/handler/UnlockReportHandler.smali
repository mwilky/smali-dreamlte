.class public Lcom/samsung/android/rlc/receiver/handler/UnlockReportHandler;
.super Ljava/lang/Object;
.source "UnlockReportHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/rlc/receiver/handler/UnlockReportHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/receiver/handler/UnlockReportHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getUnlockReportBody(Landroid/content/Context;)Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/rlc/util/RLCUtil;->getRLCID()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v2, v1}, Lcom/samsung/android/rlc/util/HMACUtil;->encryption(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v4

    invoke-virtual {v4}, Ljava/security/SignatureException;->printStackTrace()V

    goto :goto_0

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    invoke-direct {v4}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;-><init>()V

    invoke-virtual {v4, v1}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setRlcId(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setData(Ljava/lang/String;)V

    return-object v4
.end method

.method public static makeUnlockReportBundle(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "body"

    invoke-static {p0}, Lcom/samsung/android/rlc/receiver/handler/UnlockReportHandler;->getUnlockReportBody(Landroid/content/Context;)Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-object v0
.end method

.method public static run(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    sget-object v0, Lcom/samsung/android/rlc/receiver/handler/UnlockReportHandler;->TAG:Ljava/lang/String;

    const-string v1, "UnlockReportManager run"

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/rlc/util/RLCUtil;->getRLCStatus()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Normal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/rlc/receiver/handler/UnlockReportHandler;->TAG:Ljava/lang/String;

    const-string v2, "Rlc status is not normal"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "unlock_report"

    const-string v2, "N"

    invoke-static {p0, v1, v2}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "retry_17"

    const-string v2, ""

    invoke-static {p0, v1, v2}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/rlc/receiver/handler/UnlockReportHandler;->makeUnlockReportBundle(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "body"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    new-instance v3, Lcom/samsung/android/rlc/receiver/handler/CertHandler;

    invoke-direct {v3}, Lcom/samsung/android/rlc/receiver/handler/CertHandler;-><init>()V

    invoke-virtual {v3, p0, v2}, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->encryptData(Landroid/content/Context;Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;)Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const/16 v6, 0x11

    invoke-static {p0, v5, v6}, Lcom/samsung/android/rlc/util/PushUtil;->retryBackoff(Landroid/content/Context;Landroid/os/Bundle;I)I

    goto :goto_0

    :cond_1
    const-string v5, "https://%s/dm/v1/dev/unlocked"

    invoke-static {p0, v5}, Lcom/samsung/android/rlc/util/PushUtil;->getDMURL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->httpRequest(Landroid/content/Context;Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;Ljava/lang/String;)Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getHttpStatusCode()I

    move-result v7

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_2

    sget-object v7, Lcom/samsung/android/rlc/receiver/handler/UnlockReportHandler;->TAG:Ljava/lang/String;

    const-string v8, "UnlockReportManager - success "

    invoke-static {v7, v8}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "unlock_report"

    const-string v8, "N"

    invoke-static {p0, v7, v8}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "retry_17"

    const-string v8, ""

    invoke-static {p0, v7, v8}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.samsung.android.rmm.blink_stop"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v8, Landroid/os/UserHandle;->SEM_ALL:Landroid/os/UserHandle;

    const-string v9, "com.samsung.android.permission.RMM_INIT"

    invoke-virtual {p0, v7, v8, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-static {p0, v7, v0}, Lcom/samsung/android/rlc/receiver/handler/UnlockReportHandler;->setRetry(Landroid/content/Context;Landroid/os/Bundle;Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {p0, v7, v8}, Lcom/samsung/android/rlc/receiver/handler/UnlockReportHandler;->setRetry(Landroid/content/Context;Landroid/os/Bundle;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/rlc/receiver/handler/UnlockReportHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {p0, v2, v0}, Lcom/samsung/android/rlc/receiver/handler/UnlockReportHandler;->setRetry(Landroid/content/Context;Landroid/os/Bundle;Z)V

    :goto_1
    return-void
.end method

.method static setRetry(Landroid/content/Context;Landroid/os/Bundle;Z)V
    .locals 4

    sget-object v0, Lcom/samsung/android/rlc/receiver/handler/UnlockReportHandler;->TAG:Ljava/lang/String;

    const-string v1, "[setRetry]"

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string/jumbo v0, "unlock_report"

    const-string v1, "Y"

    invoke-static {p0, v0, v1}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string v0, "cert"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/16 v0, 0x11

    invoke-static {p0, p1, v0}, Lcom/samsung/android/rlc/util/PushUtil;->retryBackoff(Landroid/content/Context;Landroid/os/Bundle;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/rlc/receiver/handler/UnlockReportHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
