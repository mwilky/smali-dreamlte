.class Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "KnoxCustomManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->registerBootReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;


# direct methods
.method constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    move v1, v0

    const/4 v2, 0x0

    const/16 v3, 0x3e8

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v4}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$000(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v4

    const-string v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "multiWindowDynamicEnabled"

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    move v1, v4

    if-nez v1, :cond_0

    iget-object v4, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-virtual {v4, v2}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->setMultiWindowState(Z)I
    :try_end_0
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v5, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception for multi-window state"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v4

    iget-object v5, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v5, v4}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$102(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;Ljava/lang/Exception;)Ljava/lang/Exception;

    :cond_0
    :goto_0
    nop

    :goto_1
    nop

    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v4}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$000(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v4

    const-string v5, "KNOX_CUSTOM"

    const-string v6, "deviceSpeakerEnabledState"

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move v2, v4

    :goto_2
    goto :goto_3

    :catch_2
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :catch_3
    move-exception v4

    iget-object v5, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v5, v4}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$102(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;Ljava/lang/Exception;)Ljava/lang/Exception;

    goto :goto_2

    :goto_3
    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v4}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$200(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    invoke-virtual {v4, v0}, Landroid/media/AudioManager;->setForceSpeakerOn(Z)V

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-virtual {v4}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getProKioskState()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-virtual {v4}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getUsbMassStorageState()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-virtual {v4, v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->setUsbMassStorageState(Z)I

    :cond_2
    const/4 v4, -0x1

    const/4 v5, 0x4

    :try_start_2
    iget-object v6, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v6}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$000(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v6

    const-string v7, "KNOX_CUSTOM"

    const-string/jumbo v8, "sealedStatusBarMode"

    invoke-virtual {v6, v3, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_3

    iget-object v6, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v6}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$000(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v6

    const-string v7, "KNOX_CUSTOM"

    const-string/jumbo v8, "statusBarMode"

    invoke-virtual {v6, v3, v7, v8, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    iget-object v6, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v6}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$000(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v6

    const-string v7, "KNOX_CUSTOM"

    const-string/jumbo v8, "sealedStatusBarMode"

    invoke-virtual {v6, v3, v7, v8, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    :cond_3
    goto :goto_4

    :catch_4
    move-exception v6

    :goto_4
    :try_start_3
    iget-object v6, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v6}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$000(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v6

    const-string v7, "KNOX_CUSTOM"

    const-string/jumbo v8, "sealedStatusBarClockState"

    invoke-virtual {v6, v3, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v6}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$000(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v6

    const-string v7, "KNOX_CUSTOM"

    const-string/jumbo v8, "statusBarClockState"

    invoke-virtual {v6, v3, v7, v8, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    iget-object v6, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v6}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$000(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v6

    const-string v7, "KNOX_CUSTOM"

    const-string/jumbo v8, "sealedStatusBarClockState"

    invoke-virtual {v6, v3, v7, v8, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    :cond_4
    goto :goto_5

    :catch_5
    move-exception v6

    :goto_5
    :try_start_4
    iget-object v6, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v6}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$000(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v6

    const-string v7, "KNOX_CUSTOM"

    const-string/jumbo v8, "sealedStatusBarIconsState"

    invoke-virtual {v6, v3, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v6}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$000(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v6

    const-string v7, "KNOX_CUSTOM"

    const-string/jumbo v8, "statusBarIconsState"

    invoke-virtual {v6, v3, v7, v8, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    iget-object v6, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v6}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$000(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v6

    const-string v7, "KNOX_CUSTOM"

    const-string/jumbo v8, "sealedStatusBarIconsState"

    invoke-virtual {v6, v3, v7, v8, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    :cond_5
    goto :goto_6

    :catch_6
    move-exception v6

    :goto_6
    :try_start_5
    iget-object v6, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v6}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$000(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v6

    const-string v7, "KNOX_CUSTOM"

    const-string/jumbo v8, "sealedHardKeyIntentState"

    invoke-virtual {v6, v3, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-ne v6, v0, :cond_6

    iget-object v6, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v6}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$000(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v6

    const-string v7, "KNOX_CUSTOM"

    const-string v8, "hardKeyIntentMode"

    invoke-virtual {v6, v3, v7, v8, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    iget-object v5, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v5}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$000(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v5

    const-string v6, "KNOX_CUSTOM"

    const-string/jumbo v7, "sealedHardKeyIntentState"

    invoke-virtual {v5, v3, v6, v7, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    :cond_6
    goto :goto_7

    :catch_7
    move-exception v4

    :goto_7
    iget-object v4, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v4}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$300(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-virtual {v4}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getSettingsHiddenState()I

    move-result v4

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    const/16 v5, 0x1800

    invoke-virtual {v4, v0, v5}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->setSettingsHiddenState(ZI)I

    :cond_7
    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$000(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v0

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "adminUid"

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_6 .. :try_end_6} :catch_8

    goto :goto_8

    :catch_8
    move-exception v0

    const-string v4, "KnoxCustomManagerService"

    const-string v5, "initializing KNOX_CUSTOM with default values"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v4}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$000(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v4

    const-string v5, "KNOX_CUSTOM"

    const-string v6, "adminUid"

    invoke-virtual {v4, v3, v5, v6, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    :cond_8
    :goto_8
    return-void
.end method
