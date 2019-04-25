.class public Lcom/samsung/android/rlc/receiver/handler/CompleteHandler;
.super Ljava/lang/Object;
.source "CompleteHandler.java"


# static fields
.field private static final INTENT_PERMISSION:Ljava/lang/String; = "com.samsung.android.permission.RMM_INIT"

.field private static final INTENT_RMM_NOTI:Ljava/lang/String; = "com.samsung.android.rmm.notification"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/rlc/receiver/handler/CompleteHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/receiver/handler/CompleteHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCompleteBody(Lorg/json/JSONObject;Landroid/content/Context;)Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    .locals 14

    sget-object v0, Lcom/samsung/android/rlc/receiver/handler/CompleteHandler;->TAG:Ljava/lang/String;

    const-string v1, "[getCompleteBody]"

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, -0x1

    move v6, v5

    :try_start_0
    const-string/jumbo v7, "nonceSvr"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    const-string v7, "cert"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v1, v7

    const-string v7, "cmd"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    const-string/jumbo v7, "oprtId"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v7

    goto :goto_0

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    sget-object v7, Lcom/samsung/android/rlc/receiver/handler/CompleteHandler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[getCompleteBody] RLC operation command : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x2

    sparse-switch v7, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v7, "Locking"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v5, v9

    goto :goto_1

    :sswitch_1
    const-string v7, "Completing"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v5, 0x3

    goto :goto_1

    :sswitch_2
    const-string v7, "Unlocking"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :sswitch_3
    const-string v7, "Activating"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v5, v8

    goto :goto_1

    :sswitch_4
    const-string v7, "Blinking"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v5, 0x4

    :cond_0
    :goto_1
    packed-switch v5, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const/4 v6, 0x5

    goto :goto_2

    :pswitch_1
    const/4 v6, 0x4

    goto :goto_2

    :pswitch_2
    const/4 v6, 0x2

    goto :goto_2

    :pswitch_3
    const/4 v6, 0x3

    goto :goto_2

    :pswitch_4
    const/4 v6, 0x1

    nop

    :goto_2
    new-instance v5, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    invoke-direct {v5}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;-><init>()V

    const-string v7, "Messaging"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v10, 0x0

    if-eqz v7, :cond_2

    :try_start_1
    invoke-static {p1}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/rlc/util/RLCUtil;->getRLCID()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/rlc/util/RLCUtil;->getRLCID()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Lcom/samsung/android/rlc/util/HMACUtil;->encryption(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v11

    if-nez v7, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-static {v12, v9}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v9

    invoke-virtual {v11, v10, v9}, Lcom/samsung/android/rlc/util/RLCUtil;->encryptData([B[B)[B

    move-result-object v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v9

    :goto_4
    goto :goto_6

    :catch_1
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :cond_2
    :try_start_2
    invoke-static {p1}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/rlc/util/RLCUtil;->getRLCID()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v11

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-static {v12, v9}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v12

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-static {v13, v9}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v9

    if-nez v7, :cond_3

    goto :goto_5

    :cond_3
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    :goto_5
    invoke-virtual {v11, v12, v9, v10, v6}, Lcom/samsung/android/rlc/util/RLCUtil;->prepareRlc([B[B[BI)[B

    move-result-object v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v4, v9

    goto :goto_6

    :catch_2
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    :goto_6
    sget-object v7, Lcom/samsung/android/rlc/receiver/handler/CompleteHandler;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[getCompleteBody] Device Msg L : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_4

    array-length v8, v4

    nop

    :cond_4
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setDataByte([B)V

    invoke-static {p1}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/rlc/util/RLCUtil;->getRLCID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setRlcId(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setOprtId(Ljava/lang/String;)V

    return-object v5

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2d6440da -> :sswitch_4
        -0xf83a2f0 -> :sswitch_3
        -0xe559e02 -> :sswitch_2
        0x568fbfd6 -> :sswitch_1
        0x7768d6b7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static makeCompleteBundle(Lorg/json/JSONObject;Landroid/content/Context;)Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "body"

    invoke-static {p0, p1}, Lcom/samsung/android/rlc/receiver/handler/CompleteHandler;->getCompleteBody(Lorg/json/JSONObject;Landroid/content/Context;)Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :try_start_0
    const-string v1, "cmd"

    const-string v2, "cmd"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "oprtId"

    const-string/jumbo v2, "oprtId"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static run(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 11

    sget-object v0, Lcom/samsung/android/rlc/receiver/handler/CompleteHandler;->TAG:Ljava/lang/String;

    const-string v1, "RLC_CompleteHandler run"

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "body"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    const-string v2, "cmd"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const/4 v4, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x0

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v5, "Locking"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x2

    goto :goto_0

    :sswitch_1
    const-string v5, "Completing"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x3

    goto :goto_0

    :sswitch_2
    const-string v5, "Messaging"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :sswitch_3
    const-string v5, "Unlocking"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :sswitch_4
    const-string v5, "Activating"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v4, v6

    goto :goto_0

    :sswitch_5
    const-string v5, "Blinking"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x5

    :cond_1
    :goto_0
    packed-switch v4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v4, "https://%s/dm/v1/dev/cmd/blink"

    move-object v3, v4

    goto :goto_1

    :pswitch_1
    const-string v4, "https://%s/dm/v1/dev/cmd/message"

    move-object v3, v4

    goto :goto_1

    :pswitch_2
    const-string v4, "https://%s/dm/v1/dev/cmd/complete"

    move-object v3, v4

    goto :goto_1

    :pswitch_3
    const-string v4, "https://%s/dm/v1/dev/cmd/lock"

    move-object v3, v4

    goto :goto_1

    :pswitch_4
    const-string v4, "https://%s/dm/v1/dev/cmd/unlock"

    move-object v3, v4

    goto :goto_1

    :pswitch_5
    const-string v4, "https://%s/dm/v1/dev/cmd/activate"

    move-object v3, v4

    nop

    :goto_1
    invoke-static {p0, v3}, Lcom/samsung/android/rlc/util/PushUtil;->getDMURL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {p0, v1, v4}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->httpRequest(Landroid/content/Context;Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;Ljava/lang/String;)Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;

    move-result-object v7

    if-eqz v7, :cond_7

    sget-object v8, Lcom/samsung/android/rlc/receiver/handler/CompleteHandler;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "RLC_CompleteHandler(isfailed): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getHttpStatusCode()I

    move-result v8

    const/16 v9, 0xc8

    if-ne v8, v9, :cond_4

    sget-object v6, Lcom/samsung/android/rlc/receiver/handler/CompleteHandler;->TAG:Ljava/lang/String;

    const-string v8, "RLC_CompleteHandler : SUCCESS "

    invoke-static {v6, v8}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "Messaging"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v7}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getResponseBean()Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v6, Landroid/content/Intent;

    const-string v8, "com.samsung.android.rmm.notification"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "msg"

    invoke-virtual {v7}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getResponseBean()Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v8, "requestor"

    invoke-virtual {v7}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getResponseBean()Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getRequestor()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v8, "tel"

    invoke-virtual {v7}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getResponseBean()Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getTel()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "iconUrl"

    invoke-virtual {v7}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getResponseBean()Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getIcon()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v8, Landroid/os/UserHandle;->SEM_ALL:Landroid/os/UserHandle;

    const-string v9, "com.samsung.android.permission.RMM_INIT"

    invoke-virtual {p0, v6, v8, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :cond_2
    return-object v0

    :cond_3
    invoke-virtual {v7}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getResponseBean()Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;

    move-result-object v6

    invoke-static {p0, v6, v2}, Lcom/samsung/android/rlc/receiver/handler/ReportHandler;->makeReportBundle(Landroid/content/Context;Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    return-object v6

    :cond_4
    invoke-virtual {v7}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getHttpStatusCode()I

    move-result v8

    const/16 v9, 0x193

    if-ne v8, v9, :cond_5

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const-string v9, "clearOp"

    invoke-virtual {v8, v9, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v6, 0xc

    invoke-static {p0, v8, v6}, Lcom/samsung/android/rlc/service/RmmTask;->startTask(Landroid/content/Context;Landroid/os/Bundle;I)V

    sget-object v6, Lcom/samsung/android/rlc/receiver/handler/CompleteHandler;->TAG:Ljava/lang/String;

    const-string v9, "RLC_CompleteHandler : not supported device "

    invoke-static {v6, v9}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v7}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getHttpStatusCode()I

    move-result v6

    const/16 v8, 0x191

    if-ne v6, v8, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v7}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getHttpStatusCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_2
    goto :goto_3

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/rlc/receiver/handler/CompleteHandler;->TAG:Ljava/lang/String;

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

    :goto_3
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2d6440da -> :sswitch_5
        -0xf83a2f0 -> :sswitch_4
        -0xe559e02 -> :sswitch_3
        0x219d56e4 -> :sswitch_2
        0x568fbfd6 -> :sswitch_1
        0x7768d6b7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
