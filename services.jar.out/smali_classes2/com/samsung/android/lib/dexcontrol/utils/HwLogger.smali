.class public Lcom/samsung/android/lib/dexcontrol/utils/HwLogger;
.super Ljava/lang/Object;
.source "HwLogger.java"


# static fields
.field public static final ACTION_HQM_BIGDATA_INTENT:Ljava/lang/String; = "com.samsung.context.hqmbigdata.intent"

.field private static final DEX_CONTROL_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.app.dexcontrol"

.field public static final FEATURE_ID:Ljava/lang/String; = "DEXC"

.field public static final KEY_FAN_ERROR:Ljava/lang/String; = "DXER"

.field public static final KEY_TA:Ljava/lang/String; = "DXTA"

.field public static final KEY_UN:Ljava/lang/String; = "DXUN"

.field public static final KEY_UVDM_OPEN_ERROR:Ljava/lang/String; = "DXUO"

.field public static final KEY_UVDM_READ_ERROR:Ljava/lang/String; = "DXUR"

.field public static final KEY_UVDM_WRITE_ERROR:Ljava/lang/String; = "DXUW"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/lib/dexcontrol/utils/HwLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/utils/HwLogger;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static insertHQM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    sget-object v3, Lcom/samsung/android/lib/dexcontrol/utils/HwLogger;->TAG:Ljava/lang/String;

    const-string v4, "+++++++++++ Start insertHQM +++++++++++"

    invoke-static {v3, v4}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/lib/dexcontrol/utils/HwLogger;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v3, "HqmManagerService"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/SemHqmManager;

    if-eqz v3, :cond_1

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/String;

    const-string v6, "DXUN"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object v1, v5, v6

    move-object v15, v5

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v7

    aput-object v2, v4, v6

    move-object v14, v4

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "Accessory"

    const-string v19, "0.0"

    const-string v20, "DEXC"

    const-string/jumbo v21, "ph"

    const-string/jumbo v22, "sec"

    array-length v4, v15

    invoke-static {v15, v14, v4}, Lcom/samsung/android/lib/dexcontrol/utils/HwLogger;->parseBigData([Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    const-string v24, "com.samsung.android.app.dexcontrol"

    const-string v11, ""

    const-string v13, ""

    move-object v4, v3

    move/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move-object/from16 v9, v19

    move-object/from16 v10, v22

    move-object/from16 v12, v23

    move-object/from16 v25, v14

    move-object/from16 v14, v24

    invoke-virtual/range {v4 .. v14}, Landroid/os/SemHqmManager;->sendHWParamToHQMwithAppId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/samsung/android/lib/dexcontrol/utils/HwLogger;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "sendCoverInformationToHQM() mSemHqmManager is null"

    invoke-static {v4, v5}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static insertHQM2(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/utils/HwLogger;->TAG:Ljava/lang/String;

    const-string v1, "+++++++++++ Start insertHQM2 +++++++++++"

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "DXUN"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v3

    aput-object p3, v0, v2

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string v5, "Accessory"

    const-string v6, "0.0"

    const-string v7, "DEXC"

    const-string/jumbo v8, "ph"

    const-string/jumbo v9, "sec"

    array-length v10, v1

    invoke-static {v1, v0, v10}, Lcom/samsung/android/lib/dexcontrol/utils/HwLogger;->parseBigData([Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "com.samsung.android.app.dexcontrol"

    sget-object v12, Lcom/samsung/android/lib/dexcontrol/utils/HwLogger;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object v14, v0

    const-string v0, "Type : "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", Id : "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Ver : "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Feature : "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", HitType : "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", MFG : "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", BDataSet : "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", appID : "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", appUID : "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v12, "com.samsung.context.hqmbigdata.intent"

    invoke-direct {v0, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v12, "Type"

    invoke-virtual {v0, v12, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v12, "Id"

    invoke-virtual {v0, v12, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "Ver"

    invoke-virtual {v0, v12, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "Feature"

    invoke-virtual {v0, v12, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "HitType"

    invoke-virtual {v0, v12, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "MFG"

    invoke-virtual {v0, v12, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "BDataSet"

    invoke-virtual {v0, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "appID"

    invoke-virtual {v0, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "android.intent.extra.UID"

    invoke-virtual {v0, v12, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v12, p0

    invoke-virtual {v12, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-object v13, Lcom/samsung/android/lib/dexcontrol/utils/HwLogger;->TAG:Ljava/lang/String;

    move-object v15, v0

    const-string v0, "<sendBroadcast>"

    invoke-static {v13, v0}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/utils/HwLogger;->TAG:Ljava/lang/String;

    const-string v13, "+++++++++++ END insertHQM +++++++++++"

    invoke-static {v0, v13}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static parseBigData([Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    move-object v0, v1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    aget-object v2, p0, v1

    aget-object v3, p1, v1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\{"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\}"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/lib/dexcontrol/utils/HwLogger;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "parseBigData customDataSet : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
