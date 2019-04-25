.class public Lcom/samsung/android/rlc/receiver/handler/ReportHandler;
.super Ljava/lang/Object;
.source "ReportHandler.java"


# static fields
.field private static final INTENT_PERMISSION:Ljava/lang/String; = "com.samsung.android.permission.RMM_INIT"

.field private static final RMM_BLINK_STOP:Ljava/lang/String; = "com.samsung.android.rmm.blink_stop"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/rlc/receiver/handler/ReportHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/receiver/handler/ReportHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getReportBody(Landroid/content/Context;Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;Ljava/lang/String;)Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    .locals 15

    move-object/from16 v1, p2

    const/4 v0, -0x1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "Locking"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_1

    :sswitch_1
    const-string v2, "Completing"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_2
    const-string v2, "Unlocking"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_3
    const-string v2, "Activating"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_4
    const-string v2, "Blinking"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v2, -0x1

    :goto_1
    packed-switch v2, :pswitch_data_0

    :goto_2
    move v2, v0

    goto :goto_3

    :pswitch_0
    const/4 v0, 0x5

    goto :goto_2

    :pswitch_1
    const/4 v0, 0x4

    goto :goto_2

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_2

    :pswitch_3
    const/4 v0, 0x3

    goto :goto_2

    :pswitch_4
    const/4 v0, 0x1

    goto :goto_2

    :goto_3
    const/4 v0, 0x0

    move-object v4, v0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/rlc/util/RLCUtil;->backUpSecureData()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-ne v2, v3, :cond_1

    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getResultSvr()Ljava/lang/String;

    move-result-object v3

    const-string v6, "OK"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getPinByte()[B

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getTokenByte()[B

    move-result-object v8

    new-instance v9, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getMessageByte()[B

    move-result-object v3

    invoke-direct {v9, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getTel()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getRequestorByte()[B

    move-result-object v3

    invoke-direct {v11, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v5 .. v11}, Lcom/samsung/android/rlc/util/RLCUtil;->completeLock(Z[B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    move-object v8, p0

    goto/16 :goto_5

    :cond_1
    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    new-instance v3, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getMessageByte()[B

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([B)V

    new-instance v5, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getRequestorByte()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    new-instance v6, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getInterval()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v13, v6

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getIcon()Ljava/lang/String;

    move-result-object v6

    move-object v14, v6

    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getResultSvr()Ljava/lang/String;

    move-result-object v7

    const-string v8, "OK"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getPinByte()[B

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getTokenByte()[B

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getTel()Ljava/lang/String;

    move-result-object v11

    move-object v10, v3

    move-object v12, v5

    invoke-virtual/range {v6 .. v12}, Lcom/samsung/android/rlc/util/RLCUtil;->completeBlink(Z[B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v6

    move-object v4, v6

    if-eqz v4, :cond_3

    sget-object v6, Lcom/samsung/android/rlc/receiver/handler/ReportHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "send blinking info to application"

    invoke-static {v6, v7}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.samsung.android.rmm.blink"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "blinkMsg"

    invoke-virtual {v6, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "reqTel"

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getTel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "requestor"

    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "interval"

    invoke-virtual {v6, v7, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "status"

    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/rlc/util/RLCUtil;->getRLCStatus()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "iconUrl"

    invoke-virtual {v6, v7, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    sget-object v7, Landroid/os/UserHandle;->SEM_ALL:Landroid/os/UserHandle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v8, p0

    :try_start_1
    invoke-virtual {v8, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string v7, "blinkPass"

    new-instance v9, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getPinByte()[B

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "blinkMsg"

    invoke-virtual {v0, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "blinkReq"

    invoke-virtual {v0, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "blinkInt"

    invoke-virtual {v0, v7, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "blinkTel"

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getTel()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    :cond_3
    move-object v8, p0

    :goto_4
    goto :goto_6

    :cond_4
    move-object v8, p0

    invoke-static {v8}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getResultSvr()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OK"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getTokenByte()[B

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getSignByte()[B

    move-result-object v7

    invoke-virtual {v3, v5, v6, v2, v7}, Lcom/samsung/android/rlc/util/RLCUtil;->completeRlc(Z[BI[B)[B

    move-result-object v3

    :goto_5
    move-object v4, v3

    :goto_6
    invoke-static {v8}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/rlc/util/RLCUtil;->restoreSecureData(Ljava/lang/String;)Z

    move-result v3

    sget-object v5, Lcom/samsung/android/rlc/receiver/handler/ReportHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Store Client Data] Result : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    move-object v8, p0

    :goto_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_8
    sget-object v0, Lcom/samsung/android/rlc/receiver/handler/ReportHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Changed Status : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/rlc/util/RLCUtil;->getRLCStatus()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    invoke-direct {v0}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;-><init>()V

    invoke-static {v8}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/rlc/util/RLCUtil;->getRLCID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setRlcId(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getOprtId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setOprtId(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setToken(Ljava/lang/String;)V

    if-nez v4, :cond_5

    const-string v3, "NOK"

    goto :goto_9

    :cond_5
    const-string v3, "OK"

    :goto_9
    invoke-virtual {v0, v3}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setResultDev(Ljava/lang/String;)V

    return-object v0

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

.method public static makeReportBundle(Landroid/content/Context;Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "body"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/rlc/receiver/handler/ReportHandler;->getReportBody(Landroid/content/Context;Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;Ljava/lang/String;)Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "cmd"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static run(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 10

    sget-object v0, Lcom/samsung/android/rlc/receiver/handler/ReportHandler;->TAG:Ljava/lang/String;

    const-string v1, "RLC_ReportHandler run"

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

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

    const/4 v6, 0x1

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
    const-string v5, "Unlocking"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v4, v6

    goto :goto_0

    :sswitch_3
    const-string v5, "Activating"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v4, v0

    goto :goto_0

    :sswitch_4
    const-string v5, "Blinking"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x4

    :cond_1
    :goto_0
    packed-switch v4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v4, "https://%s/dm/v1/dev/report/blink"

    move-object v3, v4

    goto :goto_1

    :pswitch_1
    const-string v4, "https://%s/dm/v1/dev/report/complete"

    move-object v3, v4

    goto :goto_1

    :pswitch_2
    const-string v4, "https://%s/dm/v1/dev/report/lock"

    move-object v3, v4

    goto :goto_1

    :pswitch_3
    const-string v4, "https://%s/dm/v1/dev/report/unlock"

    move-object v3, v4

    if-eqz v1, :cond_2

    const-string v4, "OK"

    invoke-virtual {v1}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->getResultDev()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.android.rmm.blink_stop"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroid/os/UserHandle;->SEM_ALL:Landroid/os/UserHandle;

    const-string v7, "com.samsung.android.permission.RMM_INIT"

    invoke-virtual {p0, v4, v5, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_4
    const-string v4, "https://%s/dm/v1/dev/report/activate"

    move-object v3, v4

    nop

    :cond_2
    :goto_1
    invoke-static {p0, v3}, Lcom/samsung/android/rlc/util/PushUtil;->getDMURL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    invoke-static {p0, v1, v4}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->httpRequest(Landroid/content/Context;Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;Ljava/lang/String;)Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;

    move-result-object v7

    move-object v5, v7

    :cond_3
    const/16 v7, 0xf

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getHttpStatusCode()I

    move-result v8

    const/16 v9, 0xc8

    if-ne v8, v9, :cond_5

    sget-object v7, Lcom/samsung/android/rlc/receiver/handler/ReportHandler;->TAG:Ljava/lang/String;

    const-string v8, "RLC_ReportHandler - success "

    invoke-static {v7, v8}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "retry_15"

    const-string v8, ""

    invoke-static {p0, v7, v8}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "Completing"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string/jumbo v7, "theftptc"

    const-string v8, "N"

    invoke-static {p0, v7, v8}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/samsung/android/rlc/receiver/handler/ReportHandler;->TAG:Ljava/lang/String;

    const-string v8, "Follow not support device steps."

    invoke-static {v7, v8}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v8, "clearOp"

    invoke-virtual {v7, v8, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v8, 0xc

    invoke-static {p0, v7, v8}, Lcom/samsung/android/rlc/service/RmmTask;->startTask(Landroid/content/Context;Landroid/os/Bundle;I)V

    :cond_4
    return v6

    :cond_5
    invoke-static {p0, p1, v7}, Lcom/samsung/android/rlc/util/PushUtil;->retryBackoff(Landroid/content/Context;Landroid/os/Bundle;I)I

    goto :goto_2

    :cond_6
    invoke-static {p0, p1, v7}, Lcom/samsung/android/rlc/util/PushUtil;->retryBackoff(Landroid/content/Context;Landroid/os/Bundle;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    goto :goto_3

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/rlc/receiver/handler/ReportHandler;->TAG:Ljava/lang/String;

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
    return v0

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
