.class Lcom/samsung/android/knox/kiosk/KioskMode$3;
.super Ljava/lang/Object;
.source "KioskMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/knox/kiosk/KioskMode;->disableKioskMode(Lcom/samsung/android/knox/kiosk/KioskSetting;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

.field final synthetic val$kiosk:Lcom/samsung/android/knox/kiosk/KioskSetting;

.field final synthetic val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;


# direct methods
.method constructor <init>(Lcom/samsung/android/knox/kiosk/KioskMode;Lcom/samsung/android/knox/kiosk/IKioskMode;Lcom/samsung/android/knox/kiosk/KioskSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    iput-object p2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iput-object p3, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$kiosk:Lcom/samsung/android/knox/kiosk/KioskSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v1, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    invoke-static {v1}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/kiosk/IKioskMode;->disableKioskMode(Lcom/samsung/android/knox/ContextInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "KioskMode"

    const-string v2, "Failed talking with kiosk mode service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$kiosk:Lcom/samsung/android/knox/kiosk/KioskSetting;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    new-instance v3, Lcom/samsung/android/knox/kiosk/KioskSetting;

    invoke-direct {v3}, Lcom/samsung/android/knox/kiosk/KioskSetting;-><init>()V

    move-object v0, v3

    iput-boolean v2, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->settingsChanges:Z

    iput-boolean v2, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->statusBarExpansion:Z

    iput-boolean v2, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->homeKey:Z

    iput-boolean v2, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->airCommand:Z

    iput-boolean v2, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->airView:Z

    iput-boolean v2, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->multiWindow:Z

    iput-boolean v2, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->smartClip:Z

    iput-boolean v2, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->taskManager:Z

    iput-boolean v2, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->clearAllNotifications:Z

    iput-boolean v1, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->navigationBar:Z

    iput-boolean v1, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->statusBar:Z

    iput-boolean v1, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->systemBar:Z

    iput-boolean v2, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->wipeRecentTasks:Z

    iput v1, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->blockedEdgeFunctions:I

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    invoke-static {v3}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$000(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v4, "KioskMode"

    const-string v5, "Failed talking with restriction service"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    invoke-static {v4}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    iget-boolean v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->settingsChanges:Z

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowSettingsChanges(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v5, "KioskMode"

    const-string v6, "allow settings changes failed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    goto :goto_1

    :catch_1
    move-exception v4

    const-string v5, "KioskMode"

    const-string v6, "Failed to allow settings changes"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    :try_start_2
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    invoke-static {v4}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    iget-boolean v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->statusBarExpansion:Z

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowStatusBarExpansion(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v5, "KioskMode"

    const-string v6, "allow status bar expansion failed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_3
    goto :goto_2

    :catch_2
    move-exception v4

    const-string v5, "KioskMode"

    const-string v6, "Failed to allow status bar expansion"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    :try_start_3
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    invoke-static {v4}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    iget-boolean v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->homeKey:Z

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setHomeKeyState(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v5, "KioskMode"

    const-string/jumbo v6, "set home key state failed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_4
    goto :goto_3

    :catch_3
    move-exception v4

    const-string v5, "KioskMode"

    const-string v6, "Failed to set home key state"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    :try_start_4
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    invoke-static {v4}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    iget-boolean v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->smartClip:Z

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowSmartClipMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v5, "KioskMode"

    const-string v6, "allow smart clip mode failed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_5
    goto :goto_4

    :catch_4
    move-exception v4

    const-string v5, "KioskMode"

    const-string v6, "Failed to allow smart clip mode"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    :try_start_5
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v5, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    invoke-static {v5}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v5

    iget-boolean v6, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->airCommand:Z

    invoke-interface {v4, v5, v6}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowAirCommandMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v5, "KioskMode"

    const-string v6, "allow air command failed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    :cond_6
    goto :goto_5

    :catch_5
    move-exception v4

    const-string v5, "KioskMode"

    const-string v6, "Failed to allow air command mode"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    :try_start_6
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v5, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    invoke-static {v5}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v5

    iget-boolean v6, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->airView:Z

    invoke-interface {v4, v5, v6}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowAirViewMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v5, "KioskMode"

    const-string v6, "allow air view failed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    :cond_7
    goto :goto_6

    :catch_6
    move-exception v4

    const-string v5, "KioskMode"

    const-string v6, "Failed to allow air view mode"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6
    iget-object v4, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->hardwareKey:Ljava/util/List;

    if-eqz v4, :cond_a

    iget-object v4, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->hardwareKey:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [I

    nop

    :goto_7
    iget-object v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->hardwareKey:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_8

    iget-object v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->hardwareKey:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_8
    :try_start_7
    iget-object v1, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v5, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    invoke-static {v5}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v5

    invoke-interface {v1, v5, v4, v2}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowHardwareKeys(Lcom/samsung/android/knox/ContextInfo;[IZ)[I

    move-result-object v1

    if-nez v1, :cond_9

    const-string v5, "KioskMode"

    const-string v6, "allowHardwareKeys failed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_7

    :cond_9
    goto :goto_8

    :catch_7
    move-exception v1

    const-string v5, "KioskMode"

    const-string v6, "Failed to allow hardware keys"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a
    :goto_8
    :try_start_8
    iget-object v1, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    invoke-static {v4}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    iget-boolean v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->multiWindow:Z

    invoke-interface {v1, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowMultiWindowMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v4, "KioskMode"

    const-string/jumbo v5, "set multiwindow mode failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_8

    :cond_b
    goto :goto_9

    :catch_8
    move-exception v1

    const-string v4, "KioskMode"

    const-string v5, "Failed to allow multiwindow mode"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_9
    :try_start_9
    iget-object v1, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    invoke-static {v4}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    iget-boolean v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->taskManager:Z

    invoke-interface {v1, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowTaskManager(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v4, "KioskMode"

    const-string/jumbo v5, "set task manager failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_9

    :cond_c
    goto :goto_a

    :catch_9
    move-exception v1

    const-string v4, "KioskMode"

    const-string v5, "Failed to allow task manager"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_a
    iget-boolean v1, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->clearAllNotifications:Z

    if-eqz v1, :cond_e

    :try_start_a
    iget-object v1, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    invoke-static {v4}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/samsung/android/knox/kiosk/IKioskMode;->clearAllNotifications(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v4, "KioskMode"

    const-string v5, "clear all notifications failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_a

    :cond_d
    goto :goto_b

    :catch_a
    move-exception v1

    const-string v4, "KioskMode"

    const-string v5, "Failed to clear all notifications"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_e
    :goto_b
    :try_start_b
    iget-object v1, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    invoke-static {v4}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    iget-boolean v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->navigationBar:Z

    invoke-interface {v1, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->hideNavigationBar(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v4, "KioskMode"

    const-string v5, "hide navigationbar failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_b

    :cond_f
    goto :goto_c

    :catch_b
    move-exception v1

    const-string v4, "KioskMode"

    const-string v5, "Failed to hide navigationbar"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_c
    :try_start_c
    iget-object v1, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    invoke-static {v4}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    iget-boolean v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->statusBar:Z

    invoke-interface {v1, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->hideStatusBar(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v4, "KioskMode"

    const-string v5, "hide status bar failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_c

    :cond_10
    goto :goto_d

    :catch_c
    move-exception v1

    const-string v4, "KioskMode"

    const-string v5, "Failed to hide status bar"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_d
    :try_start_d
    iget-object v1, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    invoke-static {v4}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    iget-boolean v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->systemBar:Z

    invoke-interface {v1, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->hideSystemBar(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v4, "KioskMode"

    const-string v5, "hide system bar failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_d

    :cond_11
    goto :goto_e

    :catch_d
    move-exception v1

    const-string v4, "KioskMode"

    const-string v5, "Failed to hide system bar"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    iget-boolean v1, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->wipeRecentTasks:Z

    if-eqz v1, :cond_13

    :try_start_e
    iget-object v1, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    invoke-static {v4}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/samsung/android/knox/kiosk/IKioskMode;->wipeRecentTasks(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v4, "KioskMode"

    const-string/jumbo v5, "wipe recent task failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_e

    :cond_12
    goto :goto_f

    :catch_e
    move-exception v1

    const-string v4, "KioskMode"

    const-string v5, "Failed to wipe recent task"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_13
    :goto_f
    :try_start_f
    iget-object v1, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    invoke-static {v4}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    iget v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->blockedEdgeFunctions:I

    invoke-interface {v1, v4, v5, v2}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowEdgeScreen(Lcom/samsung/android/knox/ContextInfo;IZ)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v2, "KioskMode"

    const-string v4, "Allow edge functions failed"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_f

    :cond_14
    goto :goto_10

    :catch_f
    move-exception v1

    const-string v2, "KioskMode"

    const-string v4, "Failed to Allow Edge Functions"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_10
    return-void
.end method
