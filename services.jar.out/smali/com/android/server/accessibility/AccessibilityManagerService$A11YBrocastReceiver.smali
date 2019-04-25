.class Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "A11YBrocastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15

    move-object v1, p0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, -0x2

    const/4 v4, 0x4

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v0, :cond_8

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    if-eq v0, v9, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v9, "color_blind"

    invoke-static {v0, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v10, "color_lens_switch"

    invoke-static {v0, v10, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v9, v8, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v11, "color_adjustment_type"

    invoke-static {v0, v11, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v12, "color_blind_test"

    invoke-static {v0, v12, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eq v11, v4, :cond_1

    if-ne v11, v5, :cond_2

    :cond_1
    if-ne v12, v8, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "color_blind_user_parameter"

    invoke-static {v0, v4, v6}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    move v4, v0

    :try_start_0
    iget-object v0, v1, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0, v8, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->semSetColorBlind(ZF)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    goto :goto_1

    :cond_2
    :try_start_1
    iget-object v0, v1, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0, v8, v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->semSetColorBlind(ZF)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    goto :goto_2

    :cond_3
    if-ne v10, v8, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "color_lens_type"

    invoke-static {v0, v4, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "color_lens_opacity"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iget-object v5, v1, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v5, v0, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->semEnableMdnieColorFilter(II)Z

    :cond_4
    :goto_2
    iget-object v0, v1, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "flash_notification"

    invoke-static {v0, v4, v7, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_5

    move v7, v8

    nop

    :cond_5
    move v0, v7

    if-eqz v0, :cond_6

    iget-object v3, v1, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$800(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    goto :goto_3

    :cond_6
    iget-object v3, v1, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$900(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/hardware/camera2/CameraManager;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v3, v1, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$900(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/hardware/camera2/CameraManager;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1000(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/hardware/camera2/CameraManager$TorchCallback;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraManager;->unregisterTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;)V

    iget-object v3, v1, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$902(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/hardware/camera2/CameraManager;)Landroid/hardware/camera2/CameraManager;

    :cond_7
    :goto_3
    return-void

    :cond_8
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v9, "finger_magnifier"

    invoke-static {v0, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v9, "color_blind"

    invoke-static {v0, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v10, "color_lens_switch"

    invoke-static {v0, v10, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    iget-object v0, v1, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v11, v1, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v11}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "color_blind_cvdtype"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v13

    const/4 v14, 0x3

    invoke-static {v11, v12, v14, v13}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    iput v11, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCVDType:I

    if-ne v9, v8, :cond_b

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "color_blind_test"

    invoke-static {v0, v3, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v7, "color_adjustment_type"

    invoke-static {v0, v7, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eq v7, v5, :cond_9

    if-eq v7, v4, :cond_9

    :try_start_2
    iget-object v0, v1, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0, v8, v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->semSetColorBlind(ZF)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_5

    :cond_9
    if-ne v3, v8, :cond_a

    iget-object v0, v1, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCVDType:I

    if-eq v0, v14, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "color_blind_cvdseverity"

    invoke-static {v0, v4, v6}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "color_blind_user_parameter"

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    move v5, v0

    :try_start_3
    iget-object v0, v1, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0, v8, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->semSetColorBlind(ZF)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    :goto_4
    nop

    :cond_a
    :goto_5
    goto/16 :goto_8

    :cond_b
    if-ne v10, v8, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "color_lens_type"

    invoke-static {v0, v3, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "color_lens_opacity"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iget-object v4, v1, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v4, v0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->semEnableMdnieColorFilter(II)Z

    goto :goto_8

    :cond_c
    iget-object v0, v1, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v5, "high_contrast"

    invoke-static {v0, v5, v7, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v8, :cond_d

    move v0, v8

    goto :goto_6

    :cond_d
    move v0, v7

    :goto_6
    iget-object v5, v1, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "greyscale_mode"

    invoke-static {v5, v6, v7, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v8, :cond_e

    move v3, v8

    goto :goto_7

    :cond_e
    move v3, v7

    :goto_7
    iget-object v5, v1, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "mDNIe"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/hardware/display/SemMdnieManager;

    if-eqz v0, :cond_f

    if-eqz v3, :cond_f

    const/4 v4, 0x5

    invoke-virtual {v5, v4, v8}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setmDNIeAccessibilityMode(IZ)Z

    goto :goto_8

    :cond_f
    if-eqz v3, :cond_10

    invoke-virtual {v5, v4, v8}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setmDNIeAccessibilityMode(IZ)Z

    goto :goto_8

    :cond_10
    if-eqz v0, :cond_11

    invoke-virtual {v5, v8, v8}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setmDNIeAccessibilityMode(IZ)Z

    goto :goto_8

    :cond_11
    invoke-virtual {v5, v8, v7}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setmDNIeAccessibilityMode(IZ)Z

    :goto_8
    iget-object v0, v1, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1100(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/GestureWakeup;

    move-result-object v0

    move-object/from16 v3, p1

    invoke-virtual {v0, v3}, Lcom/android/server/accessibility/GestureWakeup;->checkSettingCondition(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, v8, :cond_13

    iget-object v0, v1, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1100(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/GestureWakeup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/GestureWakeup;->StopGestureWakeup()Z

    iget-object v0, v1, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1100(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/GestureWakeup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/GestureWakeup;->StartGestureWakeup()Z

    goto :goto_9

    :cond_12
    move-object/from16 v3, p1

    :cond_13
    :goto_9
    const-string v0, "com.android.server.sepunion.semgoodcatchservice.GOOD_CATCH_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, v1, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1200(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/samsung/android/sepunion/SemGoodCatchManager;

    move-result-object v0

    if-nez v0, :cond_14

    iget-object v0, v1, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    new-instance v4, Lcom/samsung/android/sepunion/SemGoodCatchManager;

    iget-object v5, v1, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "AccessibilityManagerService"

    const-string/jumbo v7, "toast"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v8}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1300(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;

    move-result-object v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/samsung/android/sepunion/SemGoodCatchManager;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;)V

    invoke-static {v0, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1202(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/samsung/android/sepunion/SemGoodCatchManager;)Lcom/samsung/android/sepunion/SemGoodCatchManager;

    const-string v0, "AccessibilityManagerService"

    const-string v4, "[GoodCatch]SemGoodCatchManager is created"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    return-void
.end method
