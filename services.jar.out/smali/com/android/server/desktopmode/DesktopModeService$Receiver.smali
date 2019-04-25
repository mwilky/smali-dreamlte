.class Lcom/android/server/desktopmode/DesktopModeService$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "DesktopModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DesktopModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeService;


# direct methods
.method private constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/DesktopModeService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService$Receiver;-><init>(Lcom/android/server/desktopmode/DesktopModeService;)V

    return-void
.end method

.method public static synthetic lambda$onReceive$0(Lcom/android/server/desktopmode/DesktopModeService$Receiver;Landroid/content/Intent;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->access$1100(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->access$800(Lcom/android/server/desktopmode/DesktopModeService;)I

    move-result v1

    invoke-static {v0, p1, p2, v1}, Lcom/android/server/desktopmode/DesktopModeService;->access$2800(Landroid/content/Context;Landroid/content/Intent;II)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive(), action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->access$700(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v1

    const-string v2, "com.android.server.desktopmode.action.DESKTOP_MODE_UPDATE_REQUEST"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v2, p2}, Lcom/android/server/desktopmode/DesktopModeService;->access$2000(Lcom/android/server/desktopmode/DesktopModeService;Landroid/content/Intent;)V

    const-string v2, "com.android.server.desktopmode.extra.DESKTOP_MODE_STATE"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v5, 0x2

    const/4 v6, 0x1

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-static {v1}, Lcom/android/server/desktopmode/DockManager;->isDockFastChargingAvailable(Lcom/android/server/desktopmode/State;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v2}, Lcom/android/server/desktopmode/DesktopModeService;->access$2200(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DockManager;

    move-result-object v2

    const-string/jumbo v3, "notification"

    invoke-virtual {v2, v5, v3}, Lcom/android/server/desktopmode/DockManager;->updateDockFastChargingState(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v2}, Lcom/android/server/desktopmode/DesktopModeService;->access$2200(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DockManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/server/desktopmode/DockManager;->setFastChargingEnable(Z)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v2}, Lcom/android/server/desktopmode/DesktopModeService;->access$2100(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/app/StatusBarManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/StatusBarManager;->collapsePanels()V

    invoke-static {v1}, Lcom/android/server/desktopmode/DockManager;->isDockFastChargingUsing(Lcom/android/server/desktopmode/State;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v2}, Lcom/android/server/desktopmode/DesktopModeService;->access$2200(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DockManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/server/desktopmode/DockManager;->setFastChargingEnable(Z)V

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v2, v4}, Lcom/android/server/desktopmode/DesktopModeService;->setHdmiSettings(Z)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v2}, Lcom/android/server/desktopmode/DesktopModeService;->access$900(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/desktopmode/SettingsHelper;->getHdmiSettings()I

    move-result v2

    if-ne v2, v6, :cond_2

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v2, v4}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v2, v4}, Lcom/android/server/desktopmode/DesktopModeService;->setHdmiSettings(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v2}, Lcom/android/server/desktopmode/DesktopModeService;->access$2100(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/app/StatusBarManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/StatusBarManager;->collapsePanels()V

    invoke-static {v1}, Lcom/android/server/desktopmode/DockManager;->isDockFastChargingUsing(Lcom/android/server/desktopmode/State;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v2}, Lcom/android/server/desktopmode/DesktopModeService;->access$2200(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DockManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/server/desktopmode/DockManager;->setFastChargingEnable(Z)V

    :cond_3
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v2}, Lcom/android/server/desktopmode/DesktopModeService;->access$900(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/desktopmode/SettingsHelper;->getHdmiSettings()I

    move-result v2

    if-nez v2, :cond_4

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v3, v6}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    goto :goto_0

    :cond_4
    sget-boolean v4, Lcom/samsung/android/desktopmode/DesktopModeFeature;->IS_TABLET:Z

    if-eqz v4, :cond_5

    if-ne v2, v3, :cond_5

    const-string v4, "com.android.server.desktopmode.extra.DESKTOP_MODE_SOURCE"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v5, :cond_5

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3}, Lcom/android/server/desktopmode/DesktopModeService;->access$2300(Lcom/android/server/desktopmode/DesktopModeService;)V

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v3, v6}, Lcom/android/server/desktopmode/DesktopModeService;->setHdmiSettings(Z)V

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v2}, Lcom/android/server/desktopmode/DesktopModeService;->access$2100(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/app/StatusBarManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/StatusBarManager;->collapsePanels()V

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v2, v6}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    :cond_6
    :goto_0
    goto/16 :goto_2

    :cond_7
    const-string v2, "android.intent.action.PHONE_STATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3}, Lcom/android/server/desktopmode/DesktopModeService;->access$700(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/DesktopModeService;->access$1200(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/State;)V

    goto/16 :goto_2

    :cond_8
    const-string v2, "com.android.server.desktopmode.action.DOCK_TRY_SAMSUNG_DEX_LABS_NOTIFICATION_LATER_PRESSED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v5, 0xd1

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v2, v5}, Lcom/android/server/desktopmode/DesktopModeService;->access$2400(Lcom/android/server/desktopmode/DesktopModeService;I)V

    goto/16 :goto_2

    :cond_9
    const-string v2, "com.android.server.desktopmode.action.DOCK_TRY_SAMSUNG_DEX_LABS_NOTIFICATION_SETTINGS_PRESSED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/high16 v6, 0x14200000

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v2}, Lcom/android/server/desktopmode/DesktopModeService;->access$2100(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/app/StatusBarManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/StatusBarManager;->collapsePanels()V

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v2, v5}, Lcom/android/server/desktopmode/DesktopModeService;->access$2400(Lcom/android/server/desktopmode/DesktopModeService;I)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.sec.android.app.desktoplauncher"

    const-string v5, "com.android.launcher3.settings.usedex.LatestFeatures"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3, v2, v1}, Lcom/android/server/desktopmode/DesktopModeService;->access$2500(Lcom/android/server/desktopmode/DesktopModeService;Landroid/content/Intent;Lcom/android/server/desktopmode/State;)V

    goto/16 :goto_2

    :cond_a
    const-string v2, "com.android.server.desktopmode.action.SET_DEFAULT_AUDIO_OUTPUT_NOTIFICATION_LATER_PRESSED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v5, 0xd5

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v2, v5}, Lcom/android/server/desktopmode/DesktopModeService;->access$2400(Lcom/android/server/desktopmode/DesktopModeService;I)V

    goto/16 :goto_2

    :cond_b
    const-string v2, "com.android.server.desktopmode.action.SET_DEFAULT_AUDIO_OUTPUT_NOTIFICATION_SETTINGS_PRESSED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, "com.android.server.desktopmode.action.SET_DEFAULT_AUDIO_OUTPUT_NOTIFICATION_LATER_PRESSED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto/16 :goto_1

    :cond_c
    const-string v2, "com.android.server.desktopmode.action.DOCK_PHONE_SOFTWARE_UPDATE_NOTIFICATION_LATER_PRESSED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v5, 0xd2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v2}, Lcom/android/server/desktopmode/DesktopModeService;->access$2100(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/app/StatusBarManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/StatusBarManager;->collapsePanels()V

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v2, v5}, Lcom/android/server/desktopmode/DesktopModeService;->access$2400(Lcom/android/server/desktopmode/DesktopModeService;I)V

    goto/16 :goto_2

    :cond_d
    const-string v2, "com.android.server.desktopmode.action.DOCK_PHONE_SOFTWARE_UPDATE_NOTIFICATION_LEARN_MORE_PRESSED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v2}, Lcom/android/server/desktopmode/DesktopModeService;->access$2100(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/app/StatusBarManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/StatusBarManager;->collapsePanels()V

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v2, v5}, Lcom/android/server/desktopmode/DesktopModeService;->access$2400(Lcom/android/server/desktopmode/DesktopModeService;I)V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3}, Lcom/android/server/desktopmode/DesktopModeService;->access$1100(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/desktopmode/Utils;->getMuseUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "CLICK_DISPLAYID"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    new-instance v4, Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v5}, Lcom/android/server/desktopmode/DesktopModeService;->access$2600(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/ServiceThread;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v5, Lcom/android/server/desktopmode/-$$Lambda$DesktopModeService$Receiver$fdMhdkUd8iWidU9YL_J4BYSxNb4;

    invoke-direct {v5, p0, v2, v3}, Lcom/android/server/desktopmode/-$$Lambda$DesktopModeService$Receiver$fdMhdkUd8iWidU9YL_J4BYSxNb4;-><init>(Lcom/android/server/desktopmode/DesktopModeService$Receiver;Landroid/content/Intent;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_e
    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v2, :cond_f

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Shutdown received with UserId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->getSendingUserId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->getSendingUserId()I

    move-result v2

    if-ne v2, v3, :cond_11

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v2, v4}, Lcom/android/server/desktopmode/DesktopModeService;->access$2702(Lcom/android/server/desktopmode/DesktopModeService;Z)Z

    goto :goto_2

    :cond_10
    :goto_1
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v2}, Lcom/android/server/desktopmode/DesktopModeService;->access$2100(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/app/StatusBarManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/StatusBarManager;->collapsePanels()V

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v2, v5}, Lcom/android/server/desktopmode/DesktopModeService;->access$2400(Lcom/android/server/desktopmode/DesktopModeService;I)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.sec.android.app.desktoplauncher"

    const-string v5, "com.android.launcher3.settings.DesktopSettingsActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3, v2, v1}, Lcom/android/server/desktopmode/DesktopModeService;->access$2500(Lcom/android/server/desktopmode/DesktopModeService;Landroid/content/Intent;Lcom/android/server/desktopmode/State;)V

    nop

    :cond_11
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method register()V
    .locals 7

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.android.server.desktopmode.action.DESKTOP_MODE_UPDATE_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.server.desktopmode.action.DOCK_TRY_SAMSUNG_DEX_LABS_NOTIFICATION_LATER_PRESSED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.server.desktopmode.action.DOCK_TRY_SAMSUNG_DEX_LABS_NOTIFICATION_SETTINGS_PRESSED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.server.desktopmode.action.DOCK_PHONE_SOFTWARE_UPDATE_NOTIFICATION_LATER_PRESSED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.server.desktopmode.action.DOCK_PHONE_SOFTWARE_UPDATE_NOTIFICATION_LEARN_MORE_PRESSED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.intent.action.WALLPAPER_ENGINE_SHOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.server.desktopmode.action.SET_DEFAULT_AUDIO_OUTPUT_NOTIFICATION_PRESSED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.server.desktopmode.action.SET_DEFAULT_AUDIO_OUTPUT_NOTIFICATION_LATER_PRESSED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.server.desktopmode.action.SET_DEFAULT_AUDIO_OUTPUT_NOTIFICATION_SETTINGS_PRESSED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->access$1100(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/Context;

    move-result-object v1

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method
