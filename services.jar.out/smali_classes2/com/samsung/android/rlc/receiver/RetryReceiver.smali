.class public Lcom/samsung/android/rlc/receiver/RetryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RetryReceiver.java"


# static fields
.field public static final ACTION_CHECK_DEVICE_STATUS_RETRY:Ljava/lang/String; = "com.samsung.android.rlc.CHECK_DEVICE_STATUS_RETRY"

.field public static final ACTION_COMPLETE_RETRY:Ljava/lang/String; = "com.samsung.android.rlc.COMPLETE_RETRY"

.field public static final ACTION_DELIVERY_REQUEST_RETRY:Ljava/lang/String; = "com.samsung.android.rlc.DELIVERY_REQUEST_RETRY"

.field public static final ACTION_GCM_MG_REGISTRATION_REQUEST_RETRY:Ljava/lang/String; = "com.samsung.android.rlc.GCM_MG_REGISTRATION_REQUEST_RETRY"

.field public static final ACTION_GCM_RETRY:Ljava/lang/String; = "com.samsung.android.rlc.GCM_REGISTRATION_RETRY"

.field public static final ACTION_PREPARE_RETRY:Ljava/lang/String; = "com.samsung.android.rlc.PREPARE_RETRY"

.field public static final ACTION_REPORT_RETRY:Ljava/lang/String; = "com.samsung.android.rlc.REPORT_RETRY"

.field public static final ACTION_SPP_MG_REGISTRATION_REQUEST_RETRY:Ljava/lang/String; = "com.samsung.android.rlc.SPP_MG_REGISTRATION_REQUEST_RETRY"

.field public static final ACTION_SPP_RETRY:Ljava/lang/String; = "com.samsung.android.rlc.SPP_REGISTRATION_RETRY"

.field public static final ACTION_THEFT_PROTECTION_RETRY:Ljava/lang/String; = "com.samsung.android.rlc.THEFT_PROTECTION_RETRY"

.field public static final ACTION_UNLOCK_REPORT_RETRY:Ljava/lang/String; = "com.samsung.android.rlc.UNLOCK_REPORT_RETRY"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/rlc/receiver/RetryReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/receiver/RetryReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20

    move-object/from16 v1, p1

    if-eqz p2, :cond_13

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/rlc/util/MUMUtils;->isOwnner(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/rlc/receiver/RetryReceiver;->TAG:Ljava/lang/String;

    const-string v2, "Action ignored because FMM just support in the case of master account"

    invoke-static {v0, v2}, Lcom/samsung/android/rlc/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v0, Lcom/samsung/android/rlc/receiver/RetryReceiver;->TAG:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.samsung.android.rlc.THEFT_PROTECTION_RETRY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/rlc/receiver/RetryReceiver;->TAG:Ljava/lang/String;

    const-string v2, "ACTION_THEFT_PROTECTION_RETRY"

    invoke-static {v0, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/16 v2, 0xf

    invoke-static {v1, v0, v2}, Lcom/samsung/android/rlc/service/RmmTask;->startTask(Landroid/content/Context;Landroid/os/Bundle;I)V

    goto/16 :goto_6

    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.samsung.android.rlc.GCM_REGISTRATION_RETRY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.samsung.android.rlc.GCM_MG_REGISTRATION_REQUEST_RETRY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_5

    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.samsung.android.rlc.SPP_REGISTRATION_RETRY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.samsung.android.rlc.SPP_MG_REGISTRATION_REQUEST_RETRY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_4

    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.samsung.android.rlc.CHECK_DEVICE_STATUS_RETRY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/samsung/android/rlc/receiver/RetryReceiver;->TAG:Ljava/lang/String;

    const-string v2, "ACTION_CHECK_DEVICE_STATUS_RETRY"

    invoke-static {v0, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/samsung/android/rlc/service/RmmTask;->startTask(Landroid/content/Context;Landroid/os/Bundle;I)V

    goto/16 :goto_6

    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.samsung.android.rlc.DELIVERY_REQUEST_RETRY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/samsung/android/rlc/receiver/RetryReceiver;->TAG:Ljava/lang/String;

    const-string v2, "ACTION_DELIVERY_REQUEST_RETRY"

    invoke-static {v0, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Lcom/samsung/android/rlc/service/RmmTask;->startTask(Landroid/content/Context;Landroid/os/Bundle;I)V

    goto/16 :goto_6

    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.samsung.android.rlc.PREPARE_RETRY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/samsung/android/rlc/receiver/RetryReceiver;->TAG:Ljava/lang/String;

    const-string v2, "ACTION_PREPARE_RETRY"

    invoke-static {v0, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/16 v2, 0x9

    invoke-static {v1, v0, v2}, Lcom/samsung/android/rlc/service/RmmTask;->startTask(Landroid/content/Context;Landroid/os/Bundle;I)V

    goto/16 :goto_6

    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.samsung.android.rlc.COMPLETE_RETRY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/samsung/android/rlc/receiver/RetryReceiver;->TAG:Ljava/lang/String;

    const-string v2, "ACTION_COMPLETE_RETRY"

    invoke-static {v0, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/16 v2, 0xa

    invoke-static {v1, v0, v2}, Lcom/samsung/android/rlc/service/RmmTask;->startTask(Landroid/content/Context;Landroid/os/Bundle;I)V

    goto/16 :goto_6

    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.samsung.android.rlc.REPORT_RETRY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/samsung/android/rlc/receiver/RetryReceiver;->TAG:Ljava/lang/String;

    const-string v2, "ACTION_REPORT_RETRY"

    invoke-static {v0, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/16 v2, 0xb

    invoke-static {v1, v0, v2}, Lcom/samsung/android/rlc/service/RmmTask;->startTask(Landroid/content/Context;Landroid/os/Bundle;I)V

    goto/16 :goto_6

    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.samsung.android.rlc.UNLOCK_REPORT_RETRY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/samsung/android/rlc/receiver/RetryReceiver;->TAG:Ljava/lang/String;

    const-string v2, "ACTION_UNLOCKREPORT_RETRY"

    invoke-static {v0, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/16 v2, 0x8

    invoke-static {v1, v0, v2}, Lcom/samsung/android/rlc/service/RmmTask;->startTask(Landroid/content/Context;Landroid/os/Bundle;I)V

    goto/16 :goto_6

    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.samsung.android.rlc.SECOND_CHECK_DEVICE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.samsung.android.rlc.THIRD_CHECK_DEVICE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_b
    :try_start_0
    const-string/jumbo v0, "retryInterval1"

    invoke-static {v1, v0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "retryInterval2"

    invoke-static {v1, v3}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    const-wide/16 v6, -0x1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_c

    const-wide/32 v4, 0xf731400

    goto :goto_0

    :cond_c
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    move-wide v4, v8

    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_d

    const-wide/32 v6, 0x240c8400

    goto :goto_1

    :cond_d
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    move-wide v6, v8

    :goto_1
    const-string v8, "alarm"

    invoke-virtual {v1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AlarmManager;

    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.samsung.android.rlc.CHECK_DEVICE_STATUS_RETRY"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v10, 0x8000000

    const/4 v11, 0x0

    invoke-static {v1, v11, v9, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    const-string v14, "com.samsung.android.rlc.SECOND_CHECK_DEVICE"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v13

    const-string v14, "2rd"

    const-string v2, "Y"

    invoke-virtual {v13, v14, v2}, Lcom/samsung/android/rlc/util/RLCUtil;->setStringInSecure(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    const-string v13, "com.samsung.android.rlc.THIRD_CHECK_DEVICE"

    invoke-direct {v2, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v11, v2, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v11

    move-object v15, v0

    const-string v0, "bootTime"

    invoke-virtual {v11, v0}, Lcom/samsung/android/rlc/util/RLCUtil;->getStringInSecure(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    sub-long v13, v13, v16

    sub-long v13, v6, v13

    const-wide/16 v16, 0x0

    cmp-long v0, v13, v16

    if-lez v0, :cond_e

    sget-object v0, Lcom/samsung/android/rlc/receiver/RetryReceiver;->TAG:Ljava/lang/String;

    const-string v11, "Set third check alarm"

    invoke-static {v0, v11}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    move-object/from16 v19, v2

    move-object/from16 v18, v3

    add-long v2, v16, v13

    const/4 v0, 0x3

    invoke-virtual {v8, v0, v2, v3, v10}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_2

    :cond_e
    move-object/from16 v19, v2

    move-object/from16 v18, v3

    sget-object v0, Lcom/samsung/android/rlc/receiver/RetryReceiver;->TAG:Ljava/lang/String;

    const-string v2, "Time expired"

    invoke-static {v0, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    goto :goto_3

    :cond_f
    move-object v15, v0

    move-object/from16 v18, v3

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v0

    const-string v2, "3rd"

    const-string v3, "Y"

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/rlc/util/RLCUtil;->setStringInSecure(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.android.rmm.initialize"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "oprtType"

    const-string v10, "4"

    invoke-virtual {v2, v3, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v3, "com.samsung.android.permission.RMM_INIT"

    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    sget-object v2, Lcom/samsung/android/rlc/receiver/RetryReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_10
    :goto_4
    sget-object v0, Lcom/samsung/android/rlc/receiver/RetryReceiver;->TAG:Ljava/lang/String;

    const-string v2, "ACTION_SPP_RETRY"

    invoke-static {v0, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v2, 0x4

    invoke-static {v1, v0, v2}, Lcom/samsung/android/rlc/service/RmmTask;->startTask(Landroid/content/Context;Landroid/os/Bundle;I)V

    goto :goto_6

    :cond_11
    :goto_5
    sget-object v0, Lcom/samsung/android/rlc/receiver/RetryReceiver;->TAG:Ljava/lang/String;

    const-string v2, "ACTION_GCM_RETRY"

    invoke-static {v0, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v2, 0x3

    invoke-static {v1, v0, v2}, Lcom/samsung/android/rlc/service/RmmTask;->startTask(Landroid/content/Context;Landroid/os/Bundle;I)V

    :cond_12
    :goto_6
    return-void

    :cond_13
    :goto_7
    sget-object v0, Lcom/samsung/android/rlc/receiver/RetryReceiver;->TAG:Ljava/lang/String;

    const-string v2, "intent or intent.getAction() is null"

    invoke-static {v0, v2}, Lcom/samsung/android/rlc/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
