.class public Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;
.super Ljava/lang/Object;
.source "MgRegistrationHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getMgRegistrationBody(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    .locals 8

    invoke-static {p0, p1}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getRegistraionID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/rlc/util/RLCUtil;->getRLCID()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    const/4 v4, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, 0x112f1

    if-eq v5, v6, :cond_1

    const v6, 0x14193

    if-eq v5, v6, :cond_0

    goto :goto_0

    :cond_0
    const-string v5, "SPP"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const-string v5, "GCM"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x0

    :cond_2
    :goto_0
    packed-switch v4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    :try_start_0
    const-string/jumbo v4, "spp"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :pswitch_1
    :try_start_1
    const-string v4, "gcm"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    nop

    :goto_1
    :try_start_2
    const-string/jumbo v4, "ver"

    invoke-static {p0}, Lcom/samsung/android/rlc/util/PushUtil;->getRLCClientVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v4, "model"

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "csc"

    invoke-static {}, Lcom/samsung/android/rlc/util/DeviceUtil;->getSalesCodeRegion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/samsung/android/rlc/util/HMACUtil;->encryption(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catch Ljava/security/SignatureException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v3, v4

    :goto_2
    goto :goto_3

    :catch_2
    move-exception v4

    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    :catch_3
    move-exception v4

    invoke-virtual {v4}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_2

    :catch_4
    move-exception v4

    invoke-virtual {v4}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_2

    :catch_5
    move-exception v4

    invoke-virtual {v4}, Ljava/security/SignatureException;->printStackTrace()V

    goto :goto_2

    :goto_3
    new-instance v4, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    invoke-direct {v4}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;-><init>()V

    invoke-virtual {v4, v1}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setRlcId(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setData(Ljava/lang/String;)V

    sget-object v5, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[ REG_ID]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]registPUSH: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/rlc/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[RegisterURL: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/rlc/util/PushUtil;->getMGRegisterURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/rlc/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_3
    const/4 v4, 0x0

    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static makeMgRegistrationBundle(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "body"

    invoke-static {p0, p1}, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->getMgRegistrationBody(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string/jumbo v1, "pushType"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static run(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    sget-object v0, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->TAG:Ljava/lang/String;

    const-string v3, "MgRegistrationManager run"

    invoke-static {v0, v3}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v0, "body"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    const-string/jumbo v0, "pushType"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/rlc/util/PushUtil;->getMGRegisterURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    new-instance v0, Lcom/samsung/android/rlc/receiver/handler/CertHandler;

    invoke-direct {v0}, Lcom/samsung/android/rlc/receiver/handler/CertHandler;-><init>()V

    move-object v7, v0

    const/4 v0, 0x0

    move-object v8, v0

    const/4 v9, 0x1

    :try_start_0
    invoke-virtual {v7, v1, v4}, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->encryptData(Landroid/content/Context;Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;)Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v10, v0

    sget-object v10, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MgRegistrationManager : retry long term alam set, "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2, v5, v9}, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->setRetry(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Z)V

    :goto_0
    const/4 v0, 0x0

    if-nez v8, :cond_1

    :try_start_1
    sget-object v9, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->TAG:Ljava/lang/String;

    const-string v10, "MgRegistrationManager : retry alam set "

    invoke-static {v9, v10}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "SPP"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const v10, 0x44aa200

    if-eqz v9, :cond_0

    const-string/jumbo v9, "spp_backoff"

    invoke-static {v1, v9, v10}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setRetryBackoff(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1

    :cond_0
    const-string v9, "gcm_backoff"

    invoke-static {v1, v9, v10}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setRetryBackoff(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_1
    invoke-static {v1, v2, v5, v0}, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->setRetry(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    move-object/from16 v16, v3

    goto/16 :goto_6

    :cond_1
    :try_start_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    if-ne v9, v10, :cond_2

    :try_start_3
    sget-object v0, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "unrecognized push type!! delivery repory ignored!!"

    invoke-static {v0, v9}, Lcom/samsung/android/rlc/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-void

    :cond_2
    :try_start_4
    invoke-static {v1, v8, v6}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->httpRequest(Landroid/content/Context;Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;Ljava/lang/String;)Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "MgRegistrationManager: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    if-eqz v10, :cond_3

    :try_start_5
    invoke-virtual {v10}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getHttpStatusCode()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :cond_3
    :try_start_6
    const-string/jumbo v13, "null"

    :goto_2
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v10, :cond_9

    invoke-virtual {v10}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getHttpStatusCode()I

    move-result v11
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    const/16 v12, 0x191

    if-ne v11, v12, :cond_4

    :try_start_7
    sget-object v0, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "MgRegistrationManager: DM_CLIENT_AUTH_FAIL"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2, v5, v9}, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->setRetry(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Z)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    move-object/from16 v16, v3

    goto/16 :goto_5

    :cond_4
    :try_start_8
    invoke-virtual {v10}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getHttpStatusCode()I

    move-result v11

    const/16 v12, 0x193

    if-ne v11, v12, :cond_6

    invoke-virtual {v10}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getResponseBean()Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getData()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    const/4 v12, 0x2

    invoke-static {v11, v12}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v11

    const-string v13, "cert"

    invoke-static {v1, v13}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-static {v14, v12}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v14

    invoke-virtual {v8}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->getData()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    invoke-static {v15, v12}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v12

    invoke-static {v14}, Lcom/samsung/android/rlc/util/HMACUtil;->generatePublicKey([B)Ljava/security/interfaces/RSAPublicKey;

    invoke-static {v12, v11}, Lcom/samsung/android/rlc/util/HMACUtil;->verify([B[B)Z

    move-result v15

    sget-object v9, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    move-object/from16 v16, v3

    :try_start_9
    const-string/jumbo v3, "verify signed Data : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v15, :cond_5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "clearOp"

    const/4 v9, 0x0

    invoke-virtual {v0, v3, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v3, 0xc

    invoke-static {v1, v0, v3}, Lcom/samsung/android/rlc/service/RmmTask;->startTask(Landroid/content/Context;Landroid/os/Bundle;I)V

    goto :goto_3

    :cond_5
    const/4 v3, 0x1

    invoke-static {v1, v2, v5, v3}, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->setRetry(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Z)V

    :goto_3
    sget-object v0, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->TAG:Ljava/lang/String;

    const-string v3, "MgRegistrationManager : not supported device "

    invoke-static {v0, v3}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    move-object/from16 v16, v3

    invoke-virtual {v10}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getHttpStatusCode()I

    move-result v0

    const/16 v3, 0xc8

    if-ne v0, v3, :cond_8

    const-string v0, "SPP"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "retry_13"

    const-string v3, ""

    invoke-static {v1, v0, v3}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    const-string/jumbo v0, "retry_12"

    const-string v3, ""

    invoke-static {v1, v0, v3}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    invoke-virtual {v10}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getResponseBean()Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getMgAddr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v5, v0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->markMGRegistered(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v0

    sget-object v3, Lcom/samsung/android/rlc/util/RLCUtil;->PKG_VER:Ljava/lang/String;

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/rlc/util/PushUtil;->getRLCClientVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v3, v9}, Lcom/samsung/android/rlc/util/RLCUtil;->setStringInSecure(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    const/4 v3, 0x1

    invoke-static {v1, v2, v5, v3}, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->setRetry(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Z)V

    goto :goto_5

    :cond_9
    move-object/from16 v16, v3

    const/4 v0, 0x0

    invoke-static {v1, v2, v5, v0}, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->setRetry(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Z)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    :goto_5
    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    move-object/from16 v16, v3

    :goto_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v3, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MgRegistrationManager : retry alam set, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2, v5}, Lcom/samsung/android/rlc/util/PushUtil;->retryMgBackOff(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    :goto_7
    return-void
.end method

.method static setRetry(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Z)V
    .locals 4

    sget-object v0, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->TAG:Ljava/lang/String;

    const-string v1, "[setRetry]"

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    :try_start_0
    const-string v0, "cert"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {p0, p1, p2}, Lcom/samsung/android/rlc/util/PushUtil;->retryMgBackOff(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    nop

    sget-object v1, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->TAG:Ljava/lang/String;

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

    :goto_2
    return-void
.end method
