.class Lcom/android/server/desktopmode/Shell;
.super Landroid/os/ShellCommand;
.source "Shell.java"


# instance fields
.field private mHwManager:Lcom/android/server/desktopmode/HardwareManager;

.field private mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

.field private mResolver:Landroid/content/ContentResolver;

.field private mUiManager:Lcom/android/server/desktopmode/UiManager;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Lcom/android/server/desktopmode/MultiResolutionManager;Lcom/android/server/desktopmode/UiManager;Lcom/android/server/desktopmode/HardwareManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    iput-object p1, p0, Lcom/android/server/desktopmode/Shell;->mResolver:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/android/server/desktopmode/Shell;->mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

    iput-object p3, p0, Lcom/android/server/desktopmode/Shell;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    iput-object p4, p0, Lcom/android/server/desktopmode/Shell;->mHwManager:Lcom/android/server/desktopmode/HardwareManager;

    return-void
.end method

.method private desktopModeSettingsCommand()I
    .locals 7

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/desktopmode/Shell;->desktopModeSettingsPrintUsage()V

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->getNextArg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->getNextArg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->getNextArg()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-direct {p0}, Lcom/android/server/desktopmode/Shell;->desktopModeSettingsPrintUsage()V

    return v1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x0

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v5, "clear"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x3

    goto :goto_1

    :sswitch_1
    const-string/jumbo v5, "list"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x4

    goto :goto_1

    :sswitch_2
    const-string/jumbo v5, "put"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :sswitch_3
    const-string/jumbo v5, "get"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v6

    goto :goto_1

    :sswitch_4
    const-string v5, "delete"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x2

    goto :goto_1

    :cond_2
    :goto_0
    move v5, v1

    :goto_1
    packed-switch v5, :pswitch_data_0

    invoke-direct {p0}, Lcom/android/server/desktopmode/Shell;->desktopModeSettingsPrintUsage()V

    goto :goto_2

    :pswitch_0
    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/android/server/desktopmode/Shell;->desktopModeSettingsPrintUsage()V

    return v1

    :cond_3
    iget-object v1, p0, Lcom/android/server/desktopmode/Shell;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getAllSettings(Landroid/content/ContentResolver;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/server/desktopmode/Utils;->dumpBundle(Ljava/io/PrintWriter;Landroid/os/Bundle;)V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    const-string v1, "System user (0) settings:"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/desktopmode/Shell;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v6}, Lcom/android/server/desktopmode/DesktopModeSettings;->getAllSettingsAsUser(Landroid/content/ContentResolver;I)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/server/desktopmode/Utils;->dumpBundle(Ljava/io/PrintWriter;Landroid/os/Bundle;)V

    goto :goto_2

    :pswitch_1
    if-eqz v3, :cond_4

    invoke-direct {p0}, Lcom/android/server/desktopmode/Shell;->desktopModeSettingsPrintUsage()V

    return v1

    :cond_4
    iget-object v1, p0, Lcom/android/server/desktopmode/Shell;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->deleteAllSettings(Landroid/content/ContentResolver;)V

    goto :goto_2

    :pswitch_2
    if-eqz v4, :cond_5

    invoke-direct {p0}, Lcom/android/server/desktopmode/Shell;->desktopModeSettingsPrintUsage()V

    return v1

    :cond_5
    iget-object v1, p0, Lcom/android/server/desktopmode/Shell;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v3}, Lcom/android/server/desktopmode/DesktopModeSettings;->deleteSettings(Landroid/content/ContentResolver;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_3
    iget-object v1, p0, Lcom/android/server/desktopmode/Shell;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v3, v4}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_4
    if-eqz v4, :cond_6

    invoke-direct {p0}, Lcom/android/server/desktopmode/Shell;->desktopModeSettingsPrintUsage()V

    return v1

    :cond_6
    iget-object v1, p0, Lcom/android/server/desktopmode/Shell;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "null"

    invoke-static {v1, v3, v5}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    nop

    :cond_7
    :goto_2
    return v6

    :sswitch_data_0
    .sparse-switch
        -0x4f997a55 -> :sswitch_4
        0x18f56 -> :sswitch_3
        0x1b30f -> :sswitch_2
        0x32b09e -> :sswitch_1
        0x5a5b64d -> :sswitch_0
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

.method private desktopModeSettingsPrintUsage()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "USAGE: settings get KEY"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "       settings put KEY VALUE"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "       settings delete KEY"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "       settings clear"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "       settings list"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private multiResolutionManagerCommand()I
    .locals 7

    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->peekNextArg()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/desktopmode/Shell;->mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-virtual {v2}, Lcom/android/server/desktopmode/MultiResolutionManager;->getCurrentResolution()Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/server/desktopmode/Shell;->multiResolutionManagerPrintUsage()V

    goto/16 :goto_6

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->getNextArg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x2497c4ae

    const/4 v6, 0x1

    if-eq v4, v5, :cond_2

    const v5, 0x1bc62

    if-eq v4, v5, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "set"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    goto :goto_1

    :cond_2
    const-string/jumbo v4, "supportAll"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v6

    goto :goto_1

    :cond_3
    :goto_0
    move v2, v0

    :goto_1
    packed-switch v2, :pswitch_data_0

    invoke-direct {p0}, Lcom/android/server/desktopmode/Shell;->multiResolutionManagerPrintUsage()V

    goto/16 :goto_7

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v5, 0xddf

    if-eq v4, v5, :cond_5

    const v5, 0x1ad6f

    if-eq v4, v5, :cond_4

    goto :goto_2

    :cond_4
    const-string/jumbo v4, "off"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v6

    goto :goto_3

    :cond_5
    const-string/jumbo v4, "on"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v3

    goto :goto_3

    :cond_6
    :goto_2
    move v2, v0

    :goto_3
    packed-switch v2, :pswitch_data_1

    invoke-direct {p0}, Lcom/android/server/desktopmode/Shell;->multiResolutionManagerPrintUsage()V

    goto :goto_5

    :pswitch_1
    iget-object v2, p0, Lcom/android/server/desktopmode/Shell;->mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-virtual {v2, v3}, Lcom/android/server/desktopmode/MultiResolutionManager;->setSupportAllResolution(Z)V

    goto :goto_4

    :pswitch_2
    iget-object v2, p0, Lcom/android/server/desktopmode/Shell;->mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-virtual {v2, v6}, Lcom/android/server/desktopmode/MultiResolutionManager;->setSupportAllResolution(Z)V

    nop

    :goto_4
    goto :goto_6

    :goto_5
    return v0

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->getNextArg()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-direct {p0}, Lcom/android/server/desktopmode/Shell;->multiResolutionManagerPrintUsage()V

    return v0

    :cond_7
    iget-object v6, p0, Lcom/android/server/desktopmode/Shell;->mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-virtual {v6, v1, v2, v4, v5}, Lcom/android/server/desktopmode/MultiResolutionManager;->setCustomResolutionForAdbCommand(Ljava/io/PrintWriter;III)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :goto_6
    nop

    return v3

    :goto_7
    return v0

    :catch_0
    move-exception v1

    invoke-direct {p0}, Lcom/android/server/desktopmode/Shell;->multiResolutionManagerPrintUsage()V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private multiResolutionManagerPrintUsage()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "USAGE: resolution"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "       resolution set WIDTH HEIGHT DENSITY"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "       resolution supportAll [on|off]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private uiManagerCommand()I
    .locals 9

    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->getNextArg()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/desktopmode/Shell;->uiManagerPrintUsage()V

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->getNextArg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->getNextArg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->getNextArg()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lcom/android/server/desktopmode/Shell;->uiManagerPrintUsage()V

    return v0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x0

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v4, "showDialog"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v5

    goto :goto_1

    :sswitch_1
    const-string/jumbo v4, "dismissDialog"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v4, "dismissPresentation"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x5

    goto :goto_1

    :sswitch_3
    const-string/jumbo v4, "showPresentation"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v4, "showNotification"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x2

    goto :goto_1

    :sswitch_5
    const-string/jumbo v4, "finishActivity"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x7

    goto :goto_1

    :sswitch_6
    const-string/jumbo v4, "removeNotification"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x6

    goto :goto_1

    :sswitch_7
    const-string/jumbo v4, "startActivity"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x4

    goto :goto_1

    :cond_2
    :goto_0
    move v4, v0

    :goto_1
    const/4 v6, 0x0

    packed-switch v4, :pswitch_data_0

    invoke-direct {p0}, Lcom/android/server/desktopmode/Shell;->uiManagerPrintUsage()V

    goto/16 :goto_2

    :pswitch_0
    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/android/server/desktopmode/Shell;->uiManagerPrintUsage()V

    return v0

    :cond_3
    iget-object v4, p0, Lcom/android/server/desktopmode/Shell;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/server/desktopmode/UiManager;->finishActivity(I)V

    goto :goto_2

    :pswitch_1
    if-eqz v3, :cond_4

    invoke-direct {p0}, Lcom/android/server/desktopmode/Shell;->uiManagerPrintUsage()V

    return v0

    :cond_4
    iget-object v4, p0, Lcom/android/server/desktopmode/Shell;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/server/desktopmode/UiManager;->removeNotification(I)V

    goto :goto_2

    :pswitch_2
    iget-object v4, p0, Lcom/android/server/desktopmode/Shell;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Lcom/android/server/desktopmode/UiManager;->dismissPresentation(II)V

    goto :goto_2

    :pswitch_3
    iget-object v4, p0, Lcom/android/server/desktopmode/Shell;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4, v7, v8, v6}, Lcom/android/server/desktopmode/UiManager;->startActivity(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    goto :goto_2

    :pswitch_4
    iget-object v4, p0, Lcom/android/server/desktopmode/Shell;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Lcom/android/server/desktopmode/UiManager;->showPresentation(II)V

    goto :goto_2

    :pswitch_5
    if-eqz v3, :cond_5

    invoke-direct {p0}, Lcom/android/server/desktopmode/Shell;->uiManagerPrintUsage()V

    return v0

    :cond_5
    iget-object v4, p0, Lcom/android/server/desktopmode/Shell;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/server/desktopmode/UiManager;->showNotification(I)V

    goto :goto_2

    :pswitch_6
    iget-object v4, p0, Lcom/android/server/desktopmode/Shell;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Lcom/android/server/desktopmode/UiManager;->dismissDialog(II)V

    goto :goto_2

    :pswitch_7
    iget-object v4, p0, Lcom/android/server/desktopmode/Shell;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4, v7, v8, v6}, Lcom/android/server/desktopmode/UiManager;->showDialog(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :goto_2
    nop

    return v5

    :catch_0
    move-exception v1

    invoke-direct {p0}, Lcom/android/server/desktopmode/Shell;->uiManagerPrintUsage()V

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5b20666f -> :sswitch_7
        -0x3f93d071 -> :sswitch_6
        -0x33d05f3e -> :sswitch_5
        -0x2efddb78 -> :sswitch_4
        -0x28ed6549 -> :sswitch_3
        -0x185f793c -> :sswitch_2
        -0xf4ef38e -> :sswitch_1
        0x1471d2a5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private uiManagerPrintUsage()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "USAGE: ui showDialog DISPLAYID TYPE"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "       ui showNotification TYPE"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "       ui showPresentation WHERE TYPE"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "       ui startActivity DISPLAYID TYPE"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "       ui dismissDialog TYPE"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "       ui dismissPresentation WHERE TYPE"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "       ui removeNotification TYPE"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "       ui finishActivity TYPE"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x5f5e8754

    if-eq v1, v2, :cond_6

    const v2, -0x33c144ac    # -4.9999184E7f

    if-eq v1, v2, :cond_5

    const/16 v2, 0xddf

    if-eq v1, v2, :cond_4

    const/16 v2, 0xe94

    if-eq v1, v2, :cond_3

    const v2, 0x1ad6f

    if-eq v1, v2, :cond_2

    const v2, 0x5582bc23

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "settings"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "off"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "ui"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x5

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "on"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    const-string/jumbo v1, "toggle"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x2

    goto :goto_0

    :cond_6
    const-string/jumbo v1, "resolution"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x4

    :cond_7
    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/desktopmode/Shell;->uiManagerCommand()I

    move-result v0

    return v0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/desktopmode/Shell;->multiResolutionManagerCommand()I

    move-result v0

    return v0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/desktopmode/Shell;->desktopModeSettingsCommand()I

    move-result v0

    return v0

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/desktopmode/Shell;->mHwManager:Lcom/android/server/desktopmode/HardwareManager;

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/desktopmode/HardwareManager;->command(Ljava/io/PrintWriter;Ljava/lang/String;)I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onHelp()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/desktopmode/Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "DesktopModeService commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  on"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Enable desktop mode."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  off"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Disable desktop mode."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  toggle"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Toggle desktop mode."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  settings"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Manage desktop mode settings."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  resolution"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Manage desktop mode resolution."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  ui"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Manage desktop mode UI elements."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
