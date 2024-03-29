.class public Lcom/samsung/android/rlc/receiver/handler/DeliveryReportHandler;
.super Ljava/lang/Object;
.source "DeliveryReportHandler.java"


# static fields
.field private static final REPORT_ALREADY:I = 0x190

.field private static final REPORT_SUCCESS:I = 0xc8

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/rlc/receiver/handler/DeliveryReportHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/receiver/handler/DeliveryReportHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDeliveryErrorDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    move-object v0, p1

    return-object v0
.end method

.method public static getDeliveryReportBody(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/rlc/util/RLCUtil;->getRLCID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;

    invoke-direct {v1}, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;-><init>()V

    invoke-virtual {v1, p1}, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->setMessageId(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->setRlcId(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->setPushType(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->setErrorCode(Ljava/lang/String;)V

    invoke-static {p0, p2}, Lcom/samsung/android/rlc/receiver/handler/DeliveryReportHandler;->getDeliveryErrorDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->setErrorDescription(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/rlc/util/RLCUtil;->getRLCStatus()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "init"

    invoke-virtual {v1, v2}, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->setRlcStsCode(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/rlc/util/RLCUtil;->getRLCStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->setRlcStsCode(Ljava/lang/String;)V

    :goto_0
    sget-object v2, Lcom/samsung/android/rlc/receiver/handler/DeliveryReportHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deliverReportPUSH: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Device ID is null."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static makeDeliveryReportBundle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "body"

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/rlc/receiver/handler/DeliveryReportHandler;->getDeliveryReportBody(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string/jumbo v1, "pushType"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static run(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    sget-object v0, Lcom/samsung/android/rlc/receiver/handler/DeliveryReportHandler;->TAG:Ljava/lang/String;

    const-string v1, "DeliverReportManager run"

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "body"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;

    const-string/jumbo v2, "pushType"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/samsung/android/rlc/util/PushUtil;->getDeliveryURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-ne v4, v5, :cond_0

    sget-object v4, Lcom/samsung/android/rlc/receiver/handler/DeliveryReportHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "unrecognized push type!! delivery repory ignored!!"

    invoke-static {v4, v5}, Lcom/samsung/android/rlc/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p0, v1, v3}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->httpRequest(Landroid/content/Context;Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;Ljava/lang/String;)Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;

    move-result-object v4

    const/16 v5, 0x10

    const v6, 0x44aa200

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getHttpStatusCode()I

    move-result v7

    const/16 v8, 0xc8

    if-eq v7, v8, :cond_3

    invoke-virtual {v4}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getHttpStatusCode()I

    move-result v7

    const/16 v8, 0x190

    if-ne v7, v8, :cond_1

    goto :goto_0

    :cond_1
    const-string v7, "delivery_backoff"

    invoke-static {p0, v7}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getRetryBackoff(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    if-gt v7, v6, :cond_2

    sget-object v6, Lcom/samsung/android/rlc/receiver/handler/DeliveryReportHandler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PUSH_DELIVERY_REPORT - retry-alarm: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-static {p0, v6, v5}, Lcom/samsung/android/rlc/util/PushUtil;->retryBackoff(Landroid/content/Context;Landroid/os/Bundle;I)I

    :cond_2
    goto :goto_1

    :cond_3
    :goto_0
    sget-object v5, Lcom/samsung/android/rlc/receiver/handler/DeliveryReportHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PUSH_DELIVERY_REPORT RESULT : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getResponseDeliveryBean()Lcom/samsung/android/rlc/vo/DeliveryReportApiResponseVO;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/rlc/vo/DeliveryReportApiResponseVO;->getErrorCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "retry_16"

    const-string v6, ""

    invoke-static {p0, v5, v6}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v7, "delivery_backoff"

    invoke-static {p0, v7}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getRetryBackoff(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    if-gt v7, v6, :cond_5

    sget-object v6, Lcom/samsung/android/rlc/receiver/handler/DeliveryReportHandler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PUSH_DELIVERY_REPORT - retry-alarm: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-static {p0, v6, v5}, Lcom/samsung/android/rlc/util/PushUtil;->retryBackoff(Landroid/content/Context;Landroid/os/Bundle;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/rlc/receiver/handler/DeliveryReportHandler;->TAG:Ljava/lang/String;

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

    :goto_2
    return-void
.end method
